package com.facecom.system.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.facecom.common.annotation.Excel;
import com.facecom.common.core.domain.BaseEntity;

/**
 * 调用日志对象 sys_invoker
 * 
 * @author disney
 * @date 2020-08-07
 */
public class SysInvoker extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 表主键seq_sys_invoker.nextval */
    private Long invokerId;

    /** 调用者IP */
    @Excel(name = "调用者IP")
    private String invokerIp;

    /** 调用时间 */
    @Excel(name = "调用时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date invokerTime;

    /** 调用接口结果,0:成功1:失败 */
    @Excel(name = "调用接口结果,0:成功1:失败")
    private String invokerResult;

    /** 是否合法调用者,0:合法1:非法 */
    @Excel(name = "是否合法调用者,0:合法1:非法")
    private String invokerStatus;

    /** 核对的身份证 */
    @Excel(name = "核对的身份证")
    private String invokerSfzmhm;

    /** 调用失败原因 */
    @Excel(name = "调用失败原因")
    private String invokerMsg;

    public void setInvokerId(Long invokerId) 
    {
        this.invokerId = invokerId;
    }

    public Long getInvokerId() 
    {
        return invokerId;
    }
    public void setInvokerIp(String invokerIp) 
    {
        this.invokerIp = invokerIp;
    }

    public String getInvokerIp() 
    {
        return invokerIp;
    }
    public void setInvokerTime(Date invokerTime) 
    {
        this.invokerTime = invokerTime;
    }

    public Date getInvokerTime() 
    {
        return invokerTime;
    }
    public void setInvokerResult(String invokerResult) 
    {
        this.invokerResult = invokerResult;
    }

    public String getInvokerResult() 
    {
        return invokerResult;
    }
    public void setInvokerStatus(String invokerStatus) 
    {
        this.invokerStatus = invokerStatus;
    }

    public String getInvokerStatus() 
    {
        return invokerStatus;
    }
    public void setInvokerSfzmhm(String invokerSfzmhm) 
    {
        this.invokerSfzmhm = invokerSfzmhm;
    }

    public String getInvokerSfzmhm() 
    {
        return invokerSfzmhm;
    }
    public void setInvokerMsg(String invokerMsg) 
    {
        this.invokerMsg = invokerMsg;
    }

    public String getInvokerMsg() 
    {
        return invokerMsg;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("invokerId", getInvokerId())
            .append("invokerIp", getInvokerIp())
            .append("invokerTime", getInvokerTime())
            .append("invokerResult", getInvokerResult())
            .append("invokerStatus", getInvokerStatus())
            .append("invokerSfzmhm", getInvokerSfzmhm())
            .append("invokerMsg", getInvokerMsg())
            .toString();
    }
}
