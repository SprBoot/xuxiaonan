package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import InterfaceDao.showDao;
import InterfaceService.showService;
import entity.ts;

/**
*
* <p>Title:showServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月3日下午7:52:35
* @version	2018
*/
@Service
public class showServiceImpl implements showService{
	@Autowired showDao showDao;

	@Override
	public ts getSjByIdt(int id) throws Exception {
		// TODO Auto-generated method stub
		return showDao.getSjByIdt(id);
	}
}
