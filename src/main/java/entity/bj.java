package entity;


/**
*
* <p>Title:bj</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月2日下午6:15:09
* @version	2018
*/
public class bj extends BaseEntity{
	private int id;
	private String lxid;
	private String bjmc;
	private String bjzz;
	private String bjnr;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLxid() {
		return lxid;
	}
	public void setLxid(String lxid) {
		this.lxid = lxid;
	}
	public String getBjmc() {
		return bjmc;
	}
	public void setBjmc(String bjmc) {
		this.bjmc = bjmc;
	}
	public String getBjzz() {
		return bjzz;
	}
	public void setBjzz(String bjzz) {
		this.bjzz = bjzz;
	}
	public String getBjnr() {
		return bjnr;
	}
	public void setBjnr(String bjnr) {
		this.bjnr = bjnr;
	}
}
