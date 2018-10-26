package entity;
/**
*
* <p>Title:yx</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年7月29日下午2:57:57
* @version	2018
*/
public class yx extends BaseEntity{
	private int id;
	private String yxmc;
	private String yxkfs;
	private String grgs;
	private String picid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getYxmc() {
		return yxmc;
	}
	public void setYxmc(String yxmc) {
		this.yxmc = yxmc;
	}
	public String getYxkfs() {
		return yxkfs;
	}
	public void setYxkfs(String yxkfs) {
		this.yxkfs = yxkfs;
	}
	public String getGrgs() {
		return grgs;
	}
	public void setGrgs(String grgs) {
		this.grgs = grgs;
	}
	public String getPicid() {
		return picid;
	}
	public void setPicid(String picid) {
		this.picid = picid;
	}
}
