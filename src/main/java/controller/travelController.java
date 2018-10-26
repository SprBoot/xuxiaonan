package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.NodeList;

import InterfaceService.baseService;
import InterfaceService.mformService;
import InterfaceService.travelService;
import entity.Page;
import entity.pic;
import entity.sh;
import entity.xmms;
import entity.yx;

/**
*
* <p>Title:travelController</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年7月29日下午1:09:07
* @version	2018
*/
@Controller
@RequestMapping("/travel")
public class travelController {
	@Autowired baseService baseService;
	@Autowired mformService mformService;
	@Autowired travelService travelService;
	@RequestMapping("/entrance")
	public String entrance(Model model)throws Exception{
		List<sh> sh = mformService.getSh(4);
		for(sh shs : sh) {
			String str = shs.getJs();
			if(str.length()>15){
				str = str.substring(0, 15);
				shs.setJs(str+"......");
			}
		}
		model.addAttribute("sh", sh);
		List<yx> yx = mformService.getYx(3);
		for(yx yxs : yx) {
			String st = yxs.getGrgs();
			if(st.length()>15){
				st = st.substring(0, 15);
				yxs.setGrgs(st+"......");
			}
		}
		model.addAttribute("yx", yx);
		return "linxi/travel";
	}
	@RequestMapping("/shxsentrance")
	public String shxsentrance(HttpServletRequest request,Model model)throws Exception {
		String id = request.getParameter("shid");
		int shid = Integer.parseInt(id);
		sh sh = travelService.getShByIdt(shid);
		model.addAttribute("sh", sh);
		List<sh> shList = travelService.getNewSh(3);
		for(sh shs : shList) {
			String str = shs.getJs();
			if(str.length()>100){
				str = str.substring(0, 100);
				shs.setJs(str+"......");
			}
		}
		model.addAttribute("shList", shList);
		return "linxi/shxs";
	}
	@RequestMapping("/yxxsentrance")
	public String yxxsentrance(HttpServletRequest request,Model model)throws Exception {
		String id = request.getParameter("yxid");
		int yxid = Integer.parseInt(id);
		yx yx = travelService.getYxByIdt(yxid);
		model.addAttribute("yx", yx);
		return "linxi/yxxs";
	}
	@RequestMapping("/moreentrance")
	public String moreentrance()throws Exception{
		
		return "linxi/moresh";
	}
	@RequestMapping("/moreyxentrance")
	public String moreyxentrance()throws Exception{
		
		return "linxi/moreyx";
	}
	@ResponseBody
	@RequestMapping("/getshIformation")
	public Object getshInformation(Integer start, Integer limit,Integer nowPage, Integer Number)throws Exception{	
		Page page = new Page(start,limit);
		page.setCurrentPage(nowPage);
		page.setTotal(mformService.getShCount());
		List<sh> sh = mformService.getShByCount(page);
		for(sh shs : sh) {
			String str = shs.getJs();
			if(str.length()>15){
				str = str.substring(0, 15);
				shs.setJs(str+"......");
			}
		}
		page.setRoot(sh);
		return page;
	}
	@ResponseBody
	@RequestMapping("/getyxIformation")
	public Object getyxInformation(Integer start, Integer limit,Integer nowPage, Integer Number)throws Exception{	
		Page page = new Page(start,limit);
		page.setCurrentPage(nowPage);
		page.setTotal(mformService.getYxCount());
		List<yx> yx = mformService.getYxByCount(page);
		for(yx yxs : yx) {
			String str = yxs.getGrgs();
			if(str.length()>15){
				str = str.substring(0, 15);
				yxs.setGrgs(str+"......");
			}
		}
		page.setRoot(yx);
		return page;
	}
}
