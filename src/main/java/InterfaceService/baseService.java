package InterfaceService;
/**
*
* <p>Title:baseService</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年6月16日下午2:48:38
* @version	2018
*/


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;

import entity.user;
import entity.vuser;
@Service
public interface baseService {
	public String getCurrentTime()throws Exception;
	public JSONObject uploadFile(MultipartFile file,String path,HttpSession session,HttpServletRequest request)throws Exception;
	public JSONObject uploadlbFile(MultipartFile file,String path,HttpSession session,HttpServletRequest request)throws Exception;
	public String saveFile(String fileName,String path,String type);
	public Object ImageChange(String path,String file,int width,int height,HttpServletRequest request,String modify)throws Exception;
	public String getIdByUUId()throws Exception;
	public vuser getCurrentUser()throws Exception;
	public String getUUID()throws Exception;
}
