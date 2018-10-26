package entity;

import java.util.List;

/**
*
* <p>Title:xmms</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月10日上午10:17:12
* @version	2018
*/
public class xmms extends BaseEntity{
	private int id;
	private int xmid;
	private String picid;
	private String xmnr;
	private String xmlx;
	private List<xmcy> xmcy;
	public List<xmcy> getXmcy() {
		return xmcy;
	}
	public void setXmcy(List<xmcy> xmcy) {
		this.xmcy = xmcy;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getXmid() {
		return xmid;
	}
	public void setXmid(int xmid) {
		this.xmid = xmid;
	}
	public String getPicid() {
		return picid;
	}
	public void setPicid(String picid) {
		this.picid = picid;
	}
	public String getXmnr() {
		return xmnr;
	}
	public void setXmnr(String xmnr) {
		this.xmnr = xmnr;
	}
	public String getXmlx() {
		return xmlx;
	}
	public void setXmlx(String xmlx) {
		this.xmlx = xmlx;
	}
	
}
