package com.facecom.web.controller.swagger;

import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.facecom.common.annotation.InvokerLog;
import com.facecom.common.core.controller.BaseController;
import com.facecom.common.core.domain.AjaxResult;
import com.facecom.common.utils.IpUtils;
import com.facecom.common.utils.QpsLimit;
import com.facecom.common.utils.StringUtils;
import com.facecom.framework.util.ShiroUtils;
import com.facecom.framework.util.Snippet;
import com.facecom.system.domain.SysInvoker;
import com.facecom.system.domain.SysStatistics;
import com.facecom.system.service.ISysConfigService;
import com.facecom.system.service.ISysInvokerService;
import com.facecom.system.service.ISysStatisticsService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;

/**
 * swagger 用户测试方法
 * 
 * @author facecom
 */
@Api("人证识别校验")
@RestController
@RequestMapping("/face/check")
public class FaceCheckController extends BaseController
{
    @Autowired
    private ISysInvokerService sysInvokerService;
    
    @Autowired
    private ISysStatisticsService sysStatisticsService;
    
    @ApiOperation("人脸照片比对")
    @InvokerLog(invoker = "QPS监控接口",systemCode = "651",systemName = "人脸识别系统")
    @GetMapping("/compare")
    public AjaxResult userList(HttpServletRequest request, HttpServletResponse response)
    {	
    	String invokerIp = IpUtils.getIpAddr(request);
    	SysInvoker invoker = new SysInvoker(invokerIp, new Date(), "1", "0", "4399", "成功");
    	SysStatistics sysStatistics=new SysStatistics(60, 40, 60, 40, "66", "3202800116", "锡东考场", "001", "人脸识别系统");
		//sysInvokerService.insertSysInvoker(invoker);
		//sysStatisticsService.insertSysStatistics(sysStatistics);
        return AjaxResult.success("人脸识别调用成功！");
    }

}
