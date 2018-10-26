package entity;
/**
*
* <p>Title:contact</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月3日下午8:15:08
* @version	2018
*/
public class contact extends BaseEntity{
	private int id;
	private String cname;
	private String cemail;
	private String cnr;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public String getCnr() {
		return cnr;
	}
	public void setCnr(String cnr) {
		this.cnr = cnr;
	}
}
