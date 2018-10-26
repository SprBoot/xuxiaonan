package InterfaceService;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.permission;
import entity.vuser;

/**
*
* <p>Title:userService</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年9月7日下午4:55:42
* @version	2018
*/
@Service
public interface userService {
	public vuser getUsername(String username)throws Exception;
	public void insertVuser(vuser vuser)throws Exception;
	public vuser getUser(String username)throws Exception;
	public List<permission> getPermission(int id)throws Exception;
}
