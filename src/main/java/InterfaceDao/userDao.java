package InterfaceDao;
/**
*
* <p>Title:userDao</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年9月7日下午4:55:31
* @version	2018
*/

import java.util.List;

import entity.permission;
import entity.vuser;

public interface userDao {
	public vuser getUsername(String username)throws Exception;
	public void insertVuser(vuser vuser)throws Exception;
	public vuser getUser(String username)throws Exception;
	public List<permission> getPermission(int id)throws Exception;
}
