package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import InterfaceDao.userDao;
import InterfaceService.userService;
import entity.permission;
import entity.vuser;

/**
*
* <p>Title:userServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年9月7日下午4:56:00
* @version	2018
*/
@Service
public class userServiceImpl implements userService{
	@Autowired userDao userdao;
	@Override
	public vuser getUsername(String username) throws Exception {
		// TODO Auto-generated method stub
		return userdao.getUsername(username);
	}
	@Override
	public void insertVuser(vuser vuser) throws Exception {
		// TODO Auto-generated method stub
		userdao.insertVuser(vuser);
	}
	@Override
	public vuser getUser(String username) throws Exception {
		// TODO Auto-generated method stub
		return userdao.getUser(username);
	}
	@Override
	public List<permission> getPermission(int id) throws Exception {
		// TODO Auto-generated method stub
		return userdao.getPermission(id);
	}

}
