package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import InterfaceService.mformService;
import InterfaceService.noteService;
import entity.Page;
import entity.bj;
import entity.sh;
import entity.yx;
import entity.zstree;
import entity.zszy;

/**
*
* <p>Title:moreController</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年6月13日下午2:26:17
* @version	2018
*/
@Controller
@RequestMapping("/more")
public class moreController {
	@Autowired mformService mformService;
	@Autowired noteService noteService;
	@RequestMapping("/moreInfo")
	public String moreInfo(Model model)throws Exception{
		List<zstree> zstrees = noteService.getZstree();
		for(zstree zs : zstrees) {
			int id = zs.getId();
			List<zszy> zList = noteService.getZszy(id);
			zs.setZszies(zList);
		}
		model.addAttribute("zstrees", zstrees);
		return "linxi/more";
	}
	@ResponseBody
	@RequestMapping("/getbjIformation")
	public Object getbjInformation(Integer start, Integer limit,Integer nowPage, Integer Number)throws Exception{	
		Page page = new Page(start,limit);
		page.setCurrentPage(nowPage);
		page.setTotal(mformService.getBjCount());
		List<bj> bj = mformService.getBjByCount(page);
		page.setRoot(bj);
		return page;
	}
	@RequestMapping("/bjxsentrance")
	public String bjxsentrance(HttpServletRequest request,Model model)throws Exception {
		String id = request.getParameter("bjid");
		int bjid = Integer.parseInt(id);
		bj bj = noteService.getBjByIdt(bjid);
		model.addAttribute("bj", bj);
		List<bj> bjList = noteService.getNewBj(2);
		model.addAttribute("bjList", bjList);
		return "linxi/bjxs";
	}
}
