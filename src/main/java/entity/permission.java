package entity;
/**
*
* <p>Title:permission</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年9月11日下午7:00:58
* @version	2018
*/
public class permission extends BaseEntity{
	private int id;
	private String permission;
	private String describe;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
}
