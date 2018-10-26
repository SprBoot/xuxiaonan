package entity;
/**
*
* <p>Title:BaseEntity</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午2:46:22
* @version	2018
*/
public class BaseEntity {
	private String date;//创建信息日期
	private int del_flag;//删除标记 0存在 1删除
	
	public BaseEntity() {
		super();
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getDel_flag() {
		return del_flag;
	}

	public void setDel_flag(int del_flag) {
		this.del_flag = del_flag;
	}
	
	
}
