package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import InterfaceService.baseService;
import InterfaceService.mainService;
import entity.contact;
import entity.user;
import entity.vuser;

/**
*
* <p>Title:mainController</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午2:52:53
* @version	2018
*/
@Controller
@RequestMapping("/main")
public class mainController {
	@Autowired mainService mainService;
	@Autowired baseService baseService;
	@SuppressWarnings("finally")
	@RequestMapping("/mainEntrance")
	public String mainEntrance(Model model,HttpServletRequest request,HttpSession session)throws Exception{
		try {
			vuser vuser = baseService.getCurrentUser();
			model.addAttribute("vuser", vuser);
		} catch (NullPointerException e) {
			// TODO: handle exception
			e.printStackTrace();
			return "linxi/main";
		}finally {
			return "linxi/main";
		}
	}
	@RequestMapping("/insertLx")
	public String insertLx(contact c)throws Exception{
		String udate = baseService.getCurrentTime();
		c.setDate(udate);
		c.setDel_flag(0);
		mainService.insertLx(c);
		return "redirect:/main/mainEntrance";
	}
	@RequestMapping("/mainurl")
	@ResponseBody
	public String mainurl()throws Exception{
		return "jump";
	}
}
