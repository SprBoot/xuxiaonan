package entity;
/**
*
* <p>Title:xmcy</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月10日上午10:20:40
* @version	2018
*/
public class xmcy extends BaseEntity{
	private int id;
	private int cyid;
	private String cyzw;
	private String cymc;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCyid() {
		return cyid;
	}
	public void setCyid(int cyid) {
		this.cyid = cyid;
	}
	public String getCyzw() {
		return cyzw;
	}
	public void setCyzw(String cyzw) {
		this.cyzw = cyzw;
	}
	public String getCymc() {
		return cymc;
	}
	public void setCymc(String cymc) {
		this.cymc = cymc;
	}
	
}
