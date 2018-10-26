package entity;
/**
*
* <p>Title:xm</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午4:58:01
* @version	2018
*/
public class xm extends BaseEntity{
	private int id;
	private String xmmc;
	private xmms xmms;
	public xmms getXmms() {
		return xmms;
	}
	public void setXmms(xmms xmms) {
		this.xmms = xmms;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getXmmc() {
		return xmmc;
	}
	public void setXmmc(String xmmc) {
		this.xmmc = xmmc;
	}
	
}
