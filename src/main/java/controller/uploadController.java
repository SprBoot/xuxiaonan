package controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;

import service.impl.baseServiceImpl;

@Controller
@RequestMapping("/upload")
public class uploadController {
	@Autowired baseServiceImpl baseServiceImpl;
	
	@RequestMapping(value="/images",method = RequestMethod.POST)
	@ResponseBody
	public JSONObject uploadImage(MultipartFile file,HttpServletRequest request,HttpSession session){
		/**
		 * 仅服务器端保存文件，数据库端由表单上传具体处理保存
		 */
		JSONObject json = new JSONObject();
		String orPath = request.getSession().getServletContext().getRealPath("/opt/tomcat/dinggc/");
		//对文件进行保存并且生成名称
		try{
			//成功
			json = baseServiceImpl.uploadlbFile(file, orPath,session,request);
			json.put("code", 0);			
		}catch (Exception e) {
			//失败			
			json.put("code", 1);
			e.printStackTrace();
			
		}	
		return json;
	}
	@RequestMapping(value="/imgs",method = RequestMethod.POST)
	@ResponseBody
	public JSONObject uploadImgs(MultipartFile file,HttpServletRequest request,HttpSession session){
		/**
		 * 仅服务器端保存文件，数据库端由表单上传具体处理保存
		 */
		JSONObject json = new JSONObject();
		String orPath = request.getSession().getServletContext().getRealPath("/opt/tomcat/dinggc/");
		//对文件进行保存并且生成名称
		try{
			//成功
			json = baseServiceImpl.uploadFile(file, orPath,session,request);
			json.put("code", 0);			
		}catch (Exception e) {
			//失败			
			json.put("code", 1);
			e.printStackTrace();
			
		}	
		return json;
	}
	}