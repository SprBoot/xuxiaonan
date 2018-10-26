package entity;
/**
*
* <p>Title:bjlx</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年9月10日下午6:04:59
* @version	2018
*/
public class bjlx extends BaseEntity {
	private int id;
	private String bjlxid;
	private String lxmc;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBjlxid() {
		return bjlxid;
	}
	public void setBjlxid(String bjlxid) {
		this.bjlxid = bjlxid;
	}
	public String getLxmc() {
		return lxmc;
	}
	public void setLxmc(String lxmc) {
		this.lxmc = lxmc;
	}
}
