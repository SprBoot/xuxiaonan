package entity;


/**
*
* <p>Title:exper</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午4:53:38
* @version	2018
*/
public class nlms extends BaseEntity{
	private int id;
	private int nlid;
	private String nlmc;
	private String nlzw;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNlid() {
		return nlid;
	}
	public void setNlid(int nlid) {
		this.nlid = nlid;
	}
	public String getNlmc() {
		return nlmc;
	}
	public void setNlmc(String nlmc) {
		this.nlmc = nlmc;
	}
	public String getNlzw() {
		return nlzw;
	}
	public void setNlzw(String nlzw) {
		this.nlzw = nlzw;
	}
}
