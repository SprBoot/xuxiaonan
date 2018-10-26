package entity;
/**
*
* <p>Title:user</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午4:57:08
* @version	2018
*/
public class user extends BaseEntity{
	private int id;
	private String name;
	private String gzly;
	private String grjs;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGzly() {
		return gzly;
	}
	public void setGzly(String gzly) {
		this.gzly = gzly;
	}
	public String getGrjs() {
		return grjs;
	}
	public void setGrjs(String grjs) {
		this.grjs = grjs;
	}
}
