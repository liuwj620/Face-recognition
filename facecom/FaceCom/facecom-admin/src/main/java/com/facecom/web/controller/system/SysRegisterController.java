package com.facecom.web.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.facecom.common.core.controller.BaseController;
import com.facecom.common.core.domain.AjaxResult;
import com.facecom.framework.shiro.service.SysRegisterService;
import com.facecom.system.domain.SysUser;
import com.facecom.system.service.ISysConfigService;

/**
 * 注册验证
 * 
 * @author facecom
 */
@Controller
public class SysRegisterController extends BaseController
{
    @Autowired
    private SysRegisterService registerService;

    @Autowired
    private ISysConfigService configService;

    @GetMapping("/register")
    public String register()
    {
        return "register";
    }

    @PostMapping("/register")
    @ResponseBody
    public AjaxResult ajaxRegister(SysUser user)
    {
        if (!("true".equals(configService.selectConfigByKey("sys.account.registerUser"))))
        {
            return error("当前系统没有开启注册功能！");
        }
        String msg = registerService.register(user);
        return StringUtils.isEmpty(msg) ? success() : error(msg);
    }
}
