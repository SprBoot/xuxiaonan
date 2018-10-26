package entity;
/**
*
* <p>Title:ts</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月3日下午5:48:38
* @version	2018
*/
public class ts extends BaseEntity{
	private int id;
	private String picid;
	private String tsmc;
	private String tslx;
	private String cbs;
	private String zbz;//主编
	private String price;
	private String lanuage;
	private String tjyy;
	public String getTjyy() {
		return tjyy;
	}
	public void setTjyy(String tjyy) {
		this.tjyy = tjyy;
	}
	public String getLanuage() {
		return lanuage;
	}
	public void setLanuage(String lanuage) {
		this.lanuage = lanuage;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPicid() {
		return picid;
	}
	public void setPicid(String picid) {
		this.picid = picid;
	}
	public String getTsmc() {
		return tsmc;
	}
	public void setTsmc(String tsmc) {
		this.tsmc = tsmc;
	}
	public String getTslx() {
		return tslx;
	}
	public void setTslx(String tslx) {
		this.tslx = tslx;
	}
	public String getCbs() {
		return cbs;
	}
	public void setCbs(String cbs) {
		this.cbs = cbs;
	}
	public String getZbz() {
		return zbz;
	}
	public void setZbz(String zbz) {
		this.zbz = zbz;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}
