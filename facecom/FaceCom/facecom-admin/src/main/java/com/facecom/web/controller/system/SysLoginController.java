package com.facecom.web.controller.system;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.facecom.common.core.controller.BaseController;
import com.facecom.common.core.domain.AjaxResult;
import com.facecom.common.utils.ServletUtils;
import com.facecom.common.utils.StringUtils;
import com.facecom.common.utils.IpUtils;
import com.facecom.common.utils.QpsLimit;
import com.facecom.system.domain.SysUser;
import com.facecom.system.service.ISysUserService;

/**
 * 登录验证
 * 
 * @author facecom
 */
@Controller
public class SysLoginController extends BaseController
{
	@Autowired
    private ISysUserService userService;
	
    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response)
    {
        // 如果是Ajax请求，返回Json字符串。
        if (ServletUtils.isAjaxRequest(request))
        {
            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
        }
        
        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe)
    {
    	int status = 0;
    	String loginip=IpUtils.getHostIp();
    	SysUser user=userService.selectUserByLoginName(username);
    	String userip=user.getLoginTrueIP();
    	if(null==userip) {
    		status=1;
    	}else {
    		if(userip.contains(",")) {
	    		for(String ip:userip.split(",")) {
	    			if(ip.equals(loginip)) {
	    				status=1;
	    			}
	    		}
	    	}else {
	    		if(userip.equals(loginip)) {
					status=1;
				}
			}
		}
    	
    	if(status==0) {
    		String ipstart=user.getIpStart();
    		String ipend=user.getIpEnd();
    		//验证IP段
			if(null!=ipstart && null!=ipend){
				if(ipstart!=null&&ipend!=null){
					if(ipIsValid(ipstart+"-"+ipend,loginip)){
						status=1;
					}
				}
			}
    	}
    	
    	if(status==0) {
    		return error("IP不合法，请在绑定的IP客户端登录!");
    	}
    	
        UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
        Subject subject = SecurityUtils.getSubject();
        try
        {
            subject.login(token);
            return success();
        }
        catch (AuthenticationException e)
        {
            String msg = "用户或密码错误";
            if (StringUtils.isNotEmpty(e.getMessage()))
            {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }

    @GetMapping("/unauth")
    public String unauth()
    {
        return "error/unauth";
    }
    
  //验证ip段  ipSection表示ip段格式172.88.0.6-172.88.0.254
  	public  boolean ipIsValid(String ipSection, String ip) {   
          if (ipSection == null)   
              throw new NullPointerException("IP段不能为空！");   
          if (ip == null)   
              throw new NullPointerException("IP不能为空！");   
          ipSection = ipSection.trim();   
          ip = ip.trim();   
          final String REGX_IP = "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]\\d|\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]\\d|\\d)";   
          final String REGX_IPB = REGX_IP + "\\-" + REGX_IP;   
          if (!ipSection.matches(REGX_IPB) || !ip.matches(REGX_IP))   
              return false;   
          int idx = ipSection.indexOf('-');   
          String[] sips = ipSection.substring(0, idx).split("\\.");   
          String[] sipe = ipSection.substring(idx + 1).split("\\.");   
          String[] sipt = ip.split("\\.");   
          long ips = 0L, ipe = 0L, ipt = 0L;   
          for (int i = 0; i < 4; ++i) {   
              ips = ips << 8 | Integer.parseInt(sips[i]);   
              ipe = ipe << 8 | Integer.parseInt(sipe[i]);   
              ipt = ipt << 8 | Integer.parseInt(sipt[i]);   
          }   
          if (ips > ipe) {   
              long t = ips;   
              ips = ipe;   
              ipe = t;   
          }   
          return ips <= ipt && ipt <= ipe;   
      }
}
