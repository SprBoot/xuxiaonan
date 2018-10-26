package controller;

import java.io.File;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;

import InterfaceService.baseService;
import InterfaceService.mformService;
import entity.Page;
import entity.bj;
import entity.bjlx;
import entity.nlms;
import entity.pic;
import entity.sh;
import entity.ts;
import entity.user;
import entity.xm;
import entity.xmcy;
import entity.xmms;
import entity.yx;
import entity.zssp;

/**
*
* <p>Title:mformController</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年6月13日下午3:10:46
* @version	2018
*/
@Controller
@RequestMapping("/mform")
public class mformController {
	@Autowired mformService mformService;
	@Autowired baseService baseService;
	//home页面的进入窗口
	@RequestMapping("/hentrance")
	public String hentrance(Model model)throws Exception{
		user user = mformService.getJs();
		model.addAttribute("user", user);
		List<zssp> zssp = mformService.getZssp();
		model.addAttribute("zssp", zssp);
		List<nlms> nlms = mformService.getNl();
		model.addAttribute("nlms", nlms);
		model.addAttribute("mode", 1);
		return "houtai/index";
	}
	//笔记页面的进入窗口
		@RequestMapping("/bjentrance")
		public String bjentrance(Model model)throws Exception{
			List<bj> bj = mformService.getBj(6);
			for(bj bjs : bj) {
				String str = bjs.getBjnr();
				if(str.length()>15){
					str = str.substring(0, 15);
					bjs.setBjnr(str+"......");
				}
			}
			model.addAttribute("bj", bj);
			model.addAttribute("mode", 2);
			return "houtai/elements";
		}
	//生活页面的进入窗口
	@RequestMapping("/shentrance")
	public String shentrance(Model model)throws Exception{
		List<sh> sh = mformService.getSh(6);
		for(sh shs : sh) {
			String str = shs.getJs();
			if(str.length()>15){
				str = str.substring(0, 15);
				shs.setJs(str+"......");
			}
		}
		model.addAttribute("sh", sh);
		return "houtai/profile";
	}
	//图书页面的进入窗口
		@RequestMapping("/tsentrance")
		public String tsentrance(Model model)throws Exception{
			List<ts> ts = mformService.getSj(6);
			model.addAttribute("ts", ts);
			model.addAttribute("mode", 4);
			return "houtai/sj";
		}
	//生活查看页面的进入窗口
		@RequestMapping("/ckshentrance")
		public String ckshentrance(Model model,HttpServletRequest request)throws Exception{
			String id = request.getParameter("id");
			int shid = Integer.parseInt(id);
			sh sh = mformService.getShById(shid);
			model.addAttribute("sh", sh);
			return "houtai/cksh";
		}
		//笔记查看页面的进入窗口
		@RequestMapping("/ckbjentrance")
		public String ckbjentrance(Model model,HttpServletRequest request)throws Exception{
			String id = request.getParameter("id");
			int bjid = Integer.parseInt(id);
			bj bj = mformService.getBjById(bjid);
			String lxid = bj.getLxid();
			bjlx bjlx = mformService.getBjlxById(lxid);
			model.addAttribute("bj", bj);
			model.addAttribute("bjlx", bjlx);
			model.addAttribute("mode", 2);
			return "houtai/ckbj";
		}
	//游戏查看页面的进入窗口
		@RequestMapping("/ckyxentrance")
		public String ckyxentrance(Model model,HttpServletRequest request)throws Exception{
			String id = request.getParameter("id");
			int yxid = Integer.parseInt(id);
			yx yx = mformService.getYxById(yxid);
			model.addAttribute("yx",yx);
			return "houtai/ckyx";
		}
	//书籍查看页面的进入窗口
		@RequestMapping("/cksjentrance")
		public String cksjentrance(Model model,HttpServletRequest request)throws Exception{
				String id = request.getParameter("id");
				int tsid = Integer.parseInt(id);
				ts ts = mformService.getSjById(tsid);
				model.addAttribute("ts",ts);
				model.addAttribute("mode",4);
				return "houtai/cksj";
		}
	//生活页面的进入窗口
	@RequestMapping("/tshentrance")
	public String tshentrance(Model model,HttpServletRequest request)throws Exception{
		return "houtai/zsh";
	}
	//游戏页面的进入窗口
	@RequestMapping("/tyxentrance")
	public String tyxentrance(Model model,HttpServletRequest request)throws Exception{
		return "houtai/zyx";
	}
	//书籍页面的进入窗口
	@RequestMapping("/tsjentrance")
	public String tsjentrance(Model model,HttpServletRequest request)throws Exception{
		model.addAttribute("mode", 4);
		return "houtai/zsj";
	}
	//笔记页面的进入窗口
	@RequestMapping("/tbjentrance")
	public String tbjentrance(Model model)throws Exception{
		model.addAttribute("mode", 2);
		return "houtai/zbj";
	}
	//游戏页面的进入窗口
	@RequestMapping("/yxentrance")
	public String yxentrance(Model model,HttpServletRequest request)throws Exception{
		List<yx> yx = mformService.getYx(6);
		for(yx yxs : yx) {
			String str = yxs.getGrgs();
			if(str.length()>15){
				str = str.substring(0, 15);
				yxs.setGrgs(str+"......");
			}
		}
		model.addAttribute("yx", yx);
		return "houtai/yx";
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
	@ResponseBody
	@RequestMapping("/getbjIformation")
	public Object getbjInformation(Integer start, Integer limit,Integer nowPage, Integer Number)throws Exception{	
		Page page = new Page(start,limit);
		page.setCurrentPage(nowPage);
		page.setTotal(mformService.getBjCount());
		List<bj> bj = mformService.getBjByCount(page);
		for(bj bjs : bj) {
			String str = bjs.getBjnr();
			if(str.length()>15){
				str = str.substring(0, 15);
				bjs.setBjnr(str+"......");
			}
		}
		page.setRoot(bj);
		return page;
	}
	@RequestMapping("/deleteSh")
	public String deleteSh(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int shid = Integer.parseInt(id);
		sh sh = mformService.getShById(shid);
		mformService.deleteSh(sh);
		return "redirect:/mform/shentrance";
	}
	@RequestMapping("/deleteBj")
	public String deleteBj(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int bjid = Integer.parseInt(id);
		bj bj = mformService.getBjById(bjid);
		mformService.deleteBj(bj);
		return "redirect:/mform/bjentrance";
	}
	@RequestMapping("/deleteTbj")
	public String deleteTbj(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int bjid = Integer.parseInt(id);
		bj bj = mformService.getBjById(bjid);
		mformService.deleteBj(bj);
		return "redirect:/mform/tbjentrance";
	}
	@RequestMapping("/deleteYx")
	public String deleteYx(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int yxid = Integer.parseInt(id);
		yx yx = mformService.getYxById(yxid);
		mformService.deleteYx(yx);
		return "redirect:/mform/yxentrance";
	}
	@RequestMapping("/deleteTsh")
	public String deleteTsh(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int shid = Integer.parseInt(id);
		sh sh = mformService.getShById(shid);
		mformService.deleteSh(sh);
		return "redirect:/mform/tshentrance";
	}
	@RequestMapping("/deleteSj")
	public String deleteSj(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int tsid = Integer.parseInt(id);
		ts ts = mformService.getSjById(tsid);
		mformService.deleteSj(ts);
		return "redirect:/mform/tsentrance";
	}
	@RequestMapping("/deleteTsj")
	public String deleteTsj(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int tsid = Integer.parseInt(id);
		ts ts = mformService.getSjById(tsid);
		mformService.deleteSj(ts);
		return "redirect:/mform/tsjentrance";
	}
	@RequestMapping("/deleteTyx")
	public String deleteTyx(HttpServletRequest request)throws Exception{
		String id = request.getParameter("id");
		int yxid = Integer.parseInt(id);
		yx yx = mformService.getYxById(yxid);
		mformService.deleteYx(yx);
		return "redirect:/mform/tyxentrance";
	}
	@RequestMapping("/entrance")
	public String entrance(Model model) throws Exception{
		List<zssp> zssp = mformService.getZssp();
		model.addAttribute("zssp", zssp);
		List<nlms> nlms = mformService.getNl();
		model.addAttribute("nlms", nlms);
		List<xm> xm = mformService.getXm();
		for(xm xm2 : xm) {
			int xmid = xm2.getId();
			xmms xmms = mformService.getXmms(xmid);
			List<xmcy> xmcy = mformService.getCy(xmid);
			xmms.setXmcy(xmcy);
			xm2.setXmms(xmms);
		}
		model.addAttribute("xm", xm);
		List<sh> sh = mformService.getSh(6);
		model.addAttribute("sh", sh);
		List<yx> yx = mformService.getYx(3);
		model.addAttribute("yx", yx);
		return "linxi/mform";
	}
	@RequestMapping("/updateJs")
	public String updateJs(user user)throws Exception{
		String date = baseService.getCurrentTime();
		user.setDate(date);
		mformService.updateJs(user);
		return "redirect:/mform/hentrance";
	}
	@RequestMapping("/updateZssp")
	public String updateZssp(zssp zssp)throws Exception{
		String date = baseService.getCurrentTime();
		zssp.setZsid(1);
		zssp.setDate(date);
		mformService.updateZssp(zssp);
		return "redirect:/mform/hentrance";
	}
	@RequestMapping("/updateNl")
	public String updateNl(nlms nlms)throws Exception{
		String date = baseService.getCurrentTime();
		nlms.setNlid(1);
		nlms.setDate(date);
		mformService.updateNl(nlms);
		return "redirect:/mform/hentrance";
	}
	@RequestMapping("/savepic")
	public String savepic(pic pic, HttpSession session, HttpServletRequest request,xm xm) throws Exception {
		try {
		session = request.getSession();
		MultipartFile file = (MultipartFile) session.getAttribute("multpart");
		File tempFile = (File) session.getAttribute("picname");
		String path = (String) session.getAttribute("path");
		String fileName = (String) session.getAttribute("fileName");
		String cfileName = (String) baseService.ImageChange(path, fileName, 397, 400, request, "397400");
		String udate = baseService.getCurrentTime();
		String pname = request.getParameter("pname");
		String pid = request.getParameter("pid");
		pic = mformService.getPic(pid);
		String id = pid.substring(0, 16);
		String cid = request.getParameter("pictureid");
		int xmid = Integer.parseInt(cid);
		xmms xmms = mformService.getXmms(xmid);
		xmms.setPicid(cfileName);
		xmms.setDate(udate);
		pic.setPid(cfileName);
		pic.setPname(id);
		pic.setDate(udate);
		pic.setDel_flag(0);
		mformService.updatePic(pic);
		mformService.updateXm(xmms);
		return "redirect:/mform/entrance";
		} catch (NullPointerException e ) {
			e.printStackTrace();
			return "linxi/error";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "linxi/error";
		}
	}
	@RequestMapping("/insertSh")
	public String insertSh(pic pic, HttpSession session, HttpServletRequest request,sh sh)throws Exception{
		try {
		session = request.getSession();
		MultipartFile file = (MultipartFile) session.getAttribute("multpart");
		File tempFile = (File) session.getAttribute("picname");
		String path = (String) session.getAttribute("path");
		String fileName = (String) session.getAttribute("fileName");
		String cfileName = (String) baseService.ImageChange(path, fileName, 800, 533, request, "800533");
		String udate = baseService.getCurrentTime();
		String pname = request.getParameter("pname");
		String name = pname.substring(0, 16);
		pic.setPname(name);
		pic.setPid(cfileName);
		pic.setDate(udate);
		pic.setDel_flag(0);
		sh.setPicid(cfileName);
		sh.setDate(udate);
		sh.setDel_flag(0);
		mformService.insertPic(pic);
		mformService.insertSh(sh);
		return "redirect:/mform/shentrance";
		} catch (NullPointerException e ) {
			e.printStackTrace();
			return "linxi/error";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "linxi/error";
		}
	}
	@RequestMapping("/insertSj")
	public String insertSj(pic pic, HttpSession session, HttpServletRequest request,ts ts)throws Exception{
		try {
		session = request.getSession();
		MultipartFile file = (MultipartFile) session.getAttribute("multpart");
		File tempFile = (File) session.getAttribute("picname");
		String path = (String) session.getAttribute("path");
		String fileName = (String) session.getAttribute("fileName");
		String cfileName = (String) baseService.ImageChange(path, fileName, 1024, 683, request, "1024683");
		String udate = baseService.getCurrentTime();
		String pname = request.getParameter("pname");
		String name = pname.substring(0, 16);
		pic.setPname(name);
		pic.setPid(cfileName);
		pic.setDate(udate);
		pic.setDel_flag(0);
		ts.setPicid(cfileName);
		ts.setDate(udate);
		ts.setDel_flag(0);
		mformService.insertPic(pic);
		mformService.insertSj(ts);
		return "redirect:/mform/tsentrance";
		} catch (NullPointerException e ) {
			e.printStackTrace();
			return "linxi/error";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "linxi/error";
		}
	}
	@RequestMapping("/insertBj")
	public String insertBj(HttpSession session, HttpServletRequest request,bj bj,bjlx bjlx)throws Exception{
		try {
		String uuid = baseService.getUUID();
		String udate = baseService.getCurrentTime();
		bjlx.setBjlxid(uuid);
		bjlx.setDate(udate);
		bjlx.setDel_flag(0);
		bj.setLxid(uuid);
		bj.setDate(udate);
		bj.setDel_flag(0);
		mformService.insertBj(bj);
		mformService.insertBjlx(bjlx);
		return "redirect:/mform/bjentrance";
		} catch (NullPointerException e ) {
			e.printStackTrace();
			return "linxi/error";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "linxi/error";
		}
	}
	@RequestMapping("/updateSh")
	public String updateSh(pic pic, HttpSession session, HttpServletRequest request,sh sh) throws Exception {
		try {
		session = request.getSession();
		MultipartFile file = (MultipartFile) session.getAttribute("multpart");
		File tempFile = (File) session.getAttribute("picname");
		String path = (String) session.getAttribute("path");
		String shid = request.getParameter("shid");
		int shhid = Integer.parseInt(shid);
		if(path!=null) {
			String fileName = (String) session.getAttribute("fileName");
			String cfileName = (String) baseService.ImageChange(path, fileName, 800, 533, request, "800533");
			String udate = baseService.getCurrentTime();
			String pname = request.getParameter("pname");
			String pid = request.getParameter("pid");
			pic = mformService.getPic(pid);
			String id = pid.substring(0, 16);
			sh.setPicid(cfileName);
			sh.setDate(udate);
			pic.setPid(cfileName);
			pic.setPname(id);
			pic.setDate(udate);
			pic.setDel_flag(0);
			mformService.updatePic(pic);
			mformService.updateSh(sh);
		}else {
			String pid = request.getParameter("pid");
			String udate = baseService.getCurrentTime();
			sh.setId(shhid);
			sh.setPicid(pid);
			sh.setDate(udate);
			mformService.updateSh(sh);
		}
		return "redirect:/mform/ckshentrance?id="+shhid;
		} catch (NullPointerException e ) {
			e.printStackTrace();
			return "linxi/error";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "linxi/error";
		}
	}
	@RequestMapping("/insertYx")
	public String insertYx(pic pic, HttpSession session, HttpServletRequest request,yx yx)throws Exception{
		try {
			session = request.getSession();
			MultipartFile file = (MultipartFile) session.getAttribute("multpart");
			File tempFile = (File) session.getAttribute("picname");
			String path = (String) session.getAttribute("path");
			String fileName = (String) session.getAttribute("fileName");
			String cfileName = (String) baseService.ImageChange(path, fileName, 948, 633, request, "948633");
			String udate = baseService.getCurrentTime();
			String pname = request.getParameter("pname");
			String name = pname.substring(0, 16);
			pic.setPname(name);
			pic.setPid(cfileName);
			pic.setDate(udate);
			pic.setDel_flag(0);
			yx.setPicid(cfileName);
			yx.setDate(udate);
			yx.setDel_flag(0);
			mformService.insertPic(pic);
			mformService.insertYx(yx);
			return "redirect:/mform/yxentrance";
			} catch (NullPointerException e ) {
				e.printStackTrace();
				return "linxi/error";
				
			} catch (Exception e) {
				e.printStackTrace();
				return "linxi/error";
			}
	}
	@RequestMapping("/updateYx")
	public String updateYx(pic pic, HttpSession session, HttpServletRequest request,yx yx)throws Exception{
		try {
			session = request.getSession();
			MultipartFile file = (MultipartFile) session.getAttribute("multpart");
			File tempFile = (File) session.getAttribute("picname");
			String yxid = request.getParameter("yxid");
			int yxxid = Integer.parseInt(yxid);
			String path = (String) session.getAttribute("path");
			if(path!=null) {
				String fileName = (String) session.getAttribute("fileName");
				String cfileName = (String) baseService.ImageChange(path, fileName, 800, 533, request, "800533");
				String udate = baseService.getCurrentTime();
				String pid = request.getParameter("pid");
				String id = pid.substring(0, 16);
				pic = mformService.getPic(pid);
				yx.setPicid(cfileName);
				yx.setDate(udate);
				pic.setPid(cfileName);
				pic.setPname(id);
				pic.setDate(udate);
				pic.setDel_flag(0);
				mformService.updatePic(pic);
				mformService.updateYx(yx);
			}else {
				String pid = request.getParameter("pid");
				String udate = baseService.getCurrentTime();
				yx.setId(yxxid);
				yx.setPicid(pid);
				yx.setDate(udate);
				mformService.updateYx(yx);
			}
			return "redirect:/mform/ckyxentrance?id="+yxxid;
			} catch (NullPointerException e ) {
				e.printStackTrace();
				return "linxi/error";
				
			} catch (Exception e) {
				e.printStackTrace();
				return "linxi/error";
			}
	}
	@RequestMapping("/updateBj")
	public String updateBj(HttpSession session, HttpServletRequest request,bj bj,bjlx bjlx)throws Exception{
		try {
				String bjid = request.getParameter("id");
				String bjlxid = request.getParameter("lxid");
				int id = Integer.parseInt(bjid);
				String udate = baseService.getCurrentTime();
				bj.setDate(udate);
				bjlx.setDate(udate);
				mformService.updateBj(bj);
				mformService.updateBjlx(bjlx);
			return "redirect:/mform/ckbjentrance?id="+id;
			} catch (NullPointerException e ) {
				e.printStackTrace();
				return "linxi/error";
				
			} catch (Exception e) {
				e.printStackTrace();
				return "linxi/error";
			}
	}
	@RequestMapping("/updateSj")
	public String updateSj(pic pic, HttpSession session, HttpServletRequest request,ts ts)throws Exception{
		try {
			session = request.getSession();
			MultipartFile file = (MultipartFile) session.getAttribute("multpart");
			File tempFile = (File) session.getAttribute("picname");
			String tsid = request.getParameter("tsid");
			int tssid = Integer.parseInt(tsid);
			String path = (String) session.getAttribute("path");
			if(path!=null) {
				String fileName = (String) session.getAttribute("fileName");
				String cfileName = (String) baseService.ImageChange(path, fileName, 1024, 683, request, "1024683");
				String udate = baseService.getCurrentTime();
				String pid = request.getParameter("pid");
				String id = pid.substring(0, 16);
				pic = mformService.getPic(pid);
				ts.setPicid(cfileName);
				ts.setDate(udate);
				pic.setPid(cfileName);
				pic.setPname(id);
				pic.setDate(udate);
				pic.setDel_flag(0);
				mformService.updatePic(pic);
				mformService.updateSj(ts);
			}else {
				String pid = request.getParameter("pid");
				String udate = baseService.getCurrentTime();
				ts.setId(tssid);
				ts.setPicid(pid);
				ts.setDate(udate);
				mformService.updateSj(ts);
			}
			return "redirect:/mform/cksjentrance?id="+tssid;
			} catch (NullPointerException e ) {
				e.printStackTrace();
				return "linxi/error";
				
			} catch (Exception e) {
				e.printStackTrace();
				return "linxi/error";
			}
	}
	@RequestMapping("/markpic")
	public void markpic(@RequestParam(value = "editormd-image-file", required = true) MultipartFile file,
            HttpServletRequest request, HttpServletResponse response,HttpSession session) {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
		JSONObject json = new JSONObject();
		JSONObject markjson = new JSONObject();
		PrintWriter wirte = null; 
		String orPath = request.getSession().getServletContext().getRealPath("/opt/tomcat/dinggc/");
		//对文件进行保存并且生成名称
		try{
			//成功
			wirte = response.getWriter();
			json = baseService.uploadlbFile(file, orPath,session,request);
			String path = "http://47.100.42.0:8081/xuxiaonan/uploadImages/" 
                    + json.getString("fileName");
			markjson.put("success", 1);
			markjson.put("message", "hello");
			markjson.put("url", path);
		}catch (Exception e) {
			//失败			
			json.put("code", 1);
			e.printStackTrace();
		}finally {
			wirte.print(markjson);  
            wirte.flush();  
            wirte.close();  
		}
	}
}
