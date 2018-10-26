package service.impl;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;

import InterfaceService.baseService;
import entity.user;
import entity.vuser;

/**
*
* <p>Title:baseServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年6月16日下午2:50:00
* @version	2018
*/
@Service
public class baseServiceImpl implements baseService{
	@Override
	public vuser getCurrentUser() {
		Subject subject = SecurityUtils.getSubject();
		vuser vuser = (vuser)subject.getPrincipal();		
		return vuser;
	}	
	@Override
	public String getCurrentTime() throws Exception {
		// TODO Auto-generated method stub
		Date date = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String udate= sdf.format(date);
		return udate;
	}
	@Override
	public JSONObject uploadlbFile(MultipartFile file, String path, HttpSession session, HttpServletRequest request)
			throws Exception {
		// 生成一个文件名16位数字+字母
		String fileRandomNameId = getIdByUUId();
		String fileRandomName = getIdByUUId();
		String realName = file.getOriginalFilename();
		String suffixName = realName.substring(realName.lastIndexOf("."));
		fileRandomName += suffixName;
		path = "/opt/tomcat/dinggc/";
		File tempFile = new java.io.File(path, fileRandomName);
		if (!tempFile.getParentFile().exists()) {
			tempFile.getParentFile().mkdirs();
		}
		if (tempFile.exists()) {
			tempFile.delete();
		}
		tempFile.createNewFile();
		file.transferTo(tempFile);
		session = request.getSession();
		session.setAttribute("picname", tempFile);
		session.setAttribute("multpart", file);
		session.setAttribute("path", path);
		session.setAttribute("fileName", fileRandomName);
		// 封装文件的信息
		JSONObject fileInfor = new JSONObject();
		fileInfor.put("fileId", fileRandomNameId);
		fileInfor.put("fileName", fileRandomName);
		fileInfor.put("fileType", suffixName);
		fileInfor.put("filePath", tempFile.getAbsolutePath());
		return fileInfor;
	}

	/**
	 * 文件上传方法 关于文件是否真的保存在服务器上还是未知，但是本地可以保存成功。
	 */
	@Override
	public JSONObject uploadFile(MultipartFile file, String path, HttpSession session, HttpServletRequest request)
			throws Exception {
		// 生成一个文件名16位数字+字母
		String fileRandomName = getIdByUUId();
		String realName = file.getOriginalFilename();
		String suffixName = realName.substring(realName.lastIndexOf("."));
		fileRandomName += suffixName;
		path = "/opt/tomcat/dinggc/";
		File tempFile = new java.io.File(path, fileRandomName);
		if (!tempFile.getParentFile().exists()) {
			tempFile.getParentFile().mkdirs();
		}
		if (tempFile.exists()) {
			tempFile.delete();
		}
		tempFile.createNewFile();
		file.transferTo(tempFile);
		session = request.getSession();
		session.setAttribute("path", path);
		session.setAttribute("fileName", fileRandomName);
		session.setAttribute("picname", tempFile);
		session.setAttribute("multpart", file);
		// 封装文件的信息
		JSONObject fileInfor = new JSONObject();
		fileInfor.put("fileName", fileRandomName);
		fileInfor.put("fileType", suffixName);
		fileInfor.put("filePath", tempFile.getAbsolutePath());
		return fileInfor;
	}

	/* override */
	@Override
	public String saveFile(String fileName, String path, String type) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object ImageChange(String path,String fileName, int width, int height,HttpServletRequest request,String modify) throws Exception {
		// TODO Auto-generated method stub		
		BufferedInputStream in = new BufferedInputStream(new FileInputStream(path+fileName));
		// 字节流转图片对象
		Image bi = ImageIO.read(in);
		// 构建图片流
		BufferedImage tag = new BufferedImage(width , height , BufferedImage.TYPE_INT_RGB);
		// 绘制改变尺寸后的图
		boolean m = tag.getGraphics().drawImage(bi, 0, 0, width , height , null);
		System.out.println(m);
		// 输出流
		String ModifyfileName = fileName.substring(0, 16) + modify;
		String suffix = fileName.substring(fileName.lastIndexOf("."));
		ModifyfileName += suffix;
		File out = new File(path,ModifyfileName);
		out.createNewFile();
		boolean n = ImageIO.write(tag, "jpg", out);
		System.out.println(n);
		in.close();
		return ModifyfileName;
	}
	public String getIdByUUId() {
		int machineId = 1;//最大支持1-9个集群机器部署
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//有可能是负数
            hashCodeV = - hashCodeV;
        }
        // 0 代表前面补充0     
        // 4 代表长度为4     
        // d 代表参数为正数型
        return machineId + String.format("%015d", hashCodeV);
	}
	@Override
	public String getUUID() throws Exception {
		String uuid = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
		return uuid;
	}
}
