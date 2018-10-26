package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.parser.deserializer.StringFieldDeserializer;

import InterfaceService.baseService;
import InterfaceService.userService;
import entity.user;
import entity.vuser;

/**
*
* <p>Title:userController</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年9月7日下午2:55:50
* @version	2018
*/
@Controller
@RequestMapping("/user")
public class userController {
	@Autowired userService userService;
	@Autowired baseService baseService;
	@RequestMapping("/login")
	public String login(HttpServletRequest request,Model model)throws Exception{
        //如果登录失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常lei的全限定名
		String winfo = null;
        String exceptionClassName = (String) request.getAttribute("shiroLoginFailure"); 
        //根据shiro返回的异常类路径判断，抛出指定异常信息
        if (exceptionClassName!=null){
            if(UnknownAccountException.class.getName().equals(exceptionClassName)) {
                //最终会抛给异常处理器
            	winfo = "userisnotexist";
            }else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            	winfo = "oneiswrong";
            }else{
            	winfo = "other";
            }
        }else {
        	winfo = "success";
        }
    	model.addAttribute("winfo",winfo);
		return "linxi/backlogin";
	}
	@RequestMapping("/usercheck")
	@ResponseBody
	public Object usercheck(HttpServletRequest request)throws Exception{
		String username = request.getParameter("username");
		vuser vuser = userService.getUsername(username);
		if(vuser!=null) {
			return "no";
		}else {
			return "yes";
		}
		
	}
	@RequestMapping("/register")
	@ResponseBody
	public Object register(HttpServletRequest request)throws Exception{
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String date = baseService.getCurrentTime();
			vuser vuser = new vuser();
			vuser.setUsername(username);
			vuser.setPassword(password);
			vuser.setEmail(email);
			vuser.setDate(date);
			vuser.setDel_flag(0);
			userService.insertVuser(vuser);
			return "yes";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "no";
		}
	}
	@RequestMapping("/backentrance")
	public String backentrance() {
		return "linxi/backlogin";
	}
}
