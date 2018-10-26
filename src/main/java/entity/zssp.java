package entity;
/**
*
* <p>Title:zssp</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午4:55:13
* @version	2018
*/
public class zssp extends BaseEntity{
	private int id;
	private int zsid;
	private String zsmc;
	private int percent;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getZsid() {
		return zsid;
	}
	public void setZsid(int zsid) {
		this.zsid = zsid;
	}
	public String getZsmc() {
		return zsmc;
	}
	public void setZsmc(String zsmc) {
		this.zsmc = zsmc;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	
}
