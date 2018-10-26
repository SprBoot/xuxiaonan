package controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import InterfaceService.baseService;
import InterfaceService.meService;
import entity.nlms;
import entity.zssp;
import entity.user;
import entity.vuser;
import entity.xm;
import entity.xmcy;
import entity.xmms;

/**
*
* <p>Title:meController</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午4:59:47
* @version	2018
*/
@Controller
@RequestMapping("/me")
public class meController {
	@Autowired meService meService;
	@Autowired baseService baseService;
	@RequestMapping("/userInfo")
	@RequiresPermissions("info:view")
	public String userInfo(Model model)throws Exception{
		user user = meService.getUser();
		vuser vuser = baseService.getCurrentUser();
		List<zssp> introList = meService.getIntro();
		List<nlms> experList = meService.getExper();
		List<xm> xmList = meService.getXm();
		List<xmms> xmmsList = meService.getXmms();
		List<xmcy> xmcyList = meService.getXmcy();
		for(xmms xmmssList:xmmsList) {
			for(xmcy xmcysList:xmcyList) {
				if(xmmssList.getId()==xmcysList.getCyid()) {
					xmmssList.setXmcy(xmcyList);
				}
			}
		}
		for(xm xmsList :xmList) {
			for(xmms xmmssList:xmmsList) {
				if(xmsList.getId()==xmmssList.getXmid()) {
					xmsList.setXmms(xmmssList);
				}
			}
		}
		model.addAttribute("user", user);
		model.addAttribute("introList", introList);
		model.addAttribute("experList", experList);
		model.addAttribute("xmList", xmList);
		model.addAttribute("xmcyList", xmcyList);
		model.addAttribute("vuser", vuser);
		return "linxi/me";
	}
}
