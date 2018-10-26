package entity;
/**
*
* <p>Title:sh</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年7月29日下午1:41:45
* @version	2018
*/
public class sh extends BaseEntity{
	private int id;
	private String mc;
	private String auth;
	private String js;
	private String picid;
	public String getJs() {
		return js;
	}
	public void setJs(String js) {
		this.js = js;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMc() {
		return mc;
	}
	public void setMc(String mc) {
		this.mc = mc;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getPicid() {
		return picid;
	}
	public void setPicid(String picid) {
		this.picid = picid;
	}
}
