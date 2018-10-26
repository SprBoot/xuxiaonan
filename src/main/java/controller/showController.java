package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import InterfaceService.mformService;
import InterfaceService.showService;
import entity.Page;
import entity.bj;
import entity.ts;

/**
*
* <p>Title:showController</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月3日下午7:11:53
* @version	2018
*/
@Controller
@RequestMapping("/show")
public class showController {
	@Autowired mformService mformService;
	@Autowired showService showService;
	@RequestMapping("/showentrance")
	public String showentrance()throws Exception{
		return "linxi/show";
	}
	@ResponseBody
	@RequestMapping("/getsjIformation")
	public Object getsjInformation(Integer start, Integer limit,Integer nowPage, Integer Number)throws Exception{	
		Page page = new Page(start,limit);
		page.setCurrentPage(nowPage);
		page.setTotal(mformService.getSjCount());
		List<ts> sj = mformService.getSjByCount(page);
		page.setRoot(sj);
		return page;
	}
	@RequestMapping("/sjxsentrance")
	public String sjxsentrance(HttpServletRequest request,Model model)throws Exception {
		String id = request.getParameter("sjid");
		int sjid = Integer.parseInt(id);
		ts ts = showService.getSjByIdt(sjid);
		model.addAttribute("ts", ts);
		return "linxi/sjxs";
	}
}
