package entity;

import java.util.List;

/**
*
* <p>Title:zstree</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月28日下午4:16:45
* @version	2018
*/
public class zstree extends BaseEntity {
	private int id;
	private List<zszy> zszies;
	public List<zszy> getZszies() {
		return zszies;
	}
	public void setZszies(List<zszy> zszies) {
		this.zszies = zszies;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String zsmc;
	private String zsms;
	public String getZsmc() {
		return zsmc;
	}
	public void setZsmc(String zsmc) {
		this.zsmc = zsmc;
	}
	public String getZsms() {
		return zsms;
	}
	public void setZsms(String zsms) {
		this.zsms = zsms;
	}
}
