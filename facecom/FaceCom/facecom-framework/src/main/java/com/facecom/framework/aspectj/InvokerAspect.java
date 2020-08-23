package com.facecom.framework.aspectj;

import java.lang.reflect.Method;
import java.util.Map;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.facecom.common.annotation.InvokerLog;
import com.facecom.common.annotation.Log;
import com.facecom.common.enums.BusinessStatus;
import com.facecom.common.json.JSON;
import com.facecom.common.utils.QpsLimit;
import com.facecom.common.utils.ServletUtils;
import com.facecom.common.utils.StringUtils;
import com.facecom.framework.manager.AsyncManager;
import com.facecom.framework.manager.factory.AsyncFactory;
import com.facecom.framework.util.ShiroUtils;
import com.facecom.system.domain.SysInvoker;
import com.facecom.system.domain.SysOperLog;
import com.facecom.system.domain.SysQps;
import com.facecom.system.domain.SysUser;
import com.facecom.system.service.ISysConfigService;

/**
 * 接口调用处理
 * 
 * @author facecom
 */
@Aspect
@Component
public class InvokerAspect
{
    @Autowired
    private ISysConfigService configService;
    
    private long second;
    
    private static final Logger log = LoggerFactory.getLogger(InvokerAspect.class);

    // 配置织入点
    @Pointcut("@annotation(com.facecom.common.annotation.InvokerLog)")
    public void invokerPointCut()
    {
    }
    
    /**
     * 处理请求前执行
     *
     * @param joinPoint 切点
     */
    @Before(value = "invokerPointCut()")
    public void doAfterReturning(JoinPoint joinPoint)
    {
    	long totalMilliSeconds = System.currentTimeMillis();
    	second = totalMilliSeconds;
    }
    
    /**
     * 处理完请求后执行
     *
     * @param joinPoint 切点
     */
    @AfterReturning(pointcut = "invokerPointCut()", returning = "jsonResult")
    public void doAfterReturning(JoinPoint joinPoint, Object jsonResult)
    {
        handleLog(joinPoint, null, jsonResult);
    }

    protected void handleLog(final JoinPoint joinPoint, final Exception e, Object jsonResult)
    {
        try
        {
            // 获得注解
            InvokerLog controllerLog = getAnnotationLog(joinPoint);
            if (controllerLog == null)
            {
                return;
            }
            //响应时间
        	long totalMilliSeconds = System.currentTimeMillis();
            long curTime = totalMilliSeconds;
            int sed = (int) (curTime-second);
            //请求次数
        	String period = configService.selectConfigByKey("swagger.faceCheck.period");
        	String deptCode = configService.selectConfigByKey("sys.dept.code");
        	//String deptName = configService.selectConfigByKey("swagger.faceCheck.period");
        	int time = Integer.parseInt(period);
        	int limit = QpsLimit.qpsIng(time);
        	int limits = QpsLimit.qpsIngOne();
        	Double qps = (double) (limit/time);
        	SysQps sysqps = new SysQps(qps, limits, sed, deptCode, "");
        	sysqps = getControllerMethodDescription(controllerLog, sysqps);
            // 保存数据库
            AsyncManager.me().execute(AsyncFactory.recordFaceQps(sysqps));
        }
        catch (Exception exp)
        {
            // 记录本地异常日志
            log.error("==前置通知异常==");
            log.error("异常信息:{}", exp.getMessage());
            exp.printStackTrace();
        }
    }
    
    /**
     * 获取注解中对方法的描述信息 用于Controller层注解
     * 
     * @param log 日志
     * @param qps QPS日志
     * @throws Exception
     */
    public SysQps getControllerMethodDescription(InvokerLog log, SysQps qps) throws Exception
    {
        // 设置系统编号
    	qps.setSystemCode(log.systemCode());
        // 设置系统名称
    	qps.setSystemName(log.systemName());
        // 设置系统接口名称
    	qps.setSystemName(log.invoker());
        return qps;
    }
    
    /**
     * 是否存在注解，如果存在就获取
     */
    private InvokerLog getAnnotationLog(JoinPoint joinPoint) throws Exception
    {
        Signature signature = joinPoint.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        Method method = methodSignature.getMethod();

        if (method != null)
        {
            return method.getAnnotation(InvokerLog.class);
        }
        return null;
    }
}
