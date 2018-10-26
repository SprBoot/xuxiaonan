package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import InterfaceDao.travelDao;
import InterfaceService.travelService;
import entity.yx;
import entity.sh;

/**
*
* <p>Title:travelServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年7月29日下午1:41:12
* @version	2018
*/
@Service
public class travelServiceImpl implements travelService{
	@Autowired travelDao travelDao;

	@Override
	public List<sh> getShnr(int count) throws Exception {
		// TODO Auto-generated method stub
		return travelDao.getShnr(count);
	}

	@Override
	public List<yx> getYxlb() throws Exception {
		// TODO Auto-generated method stub
		return travelDao.getYxlb();
	}

	@Override
	public sh getShByIdt(int id) throws Exception {
		// TODO Auto-generated method stub
		return travelDao.getShByIdt(id);
	}

	@Override
	public List<sh> getNewSh(int count) throws Exception {
		// TODO Auto-generated method stub
		return travelDao.getNewSh(count);
	}

	@Override
	public yx getYxByIdt(int id) throws Exception {
		// TODO Auto-generated method stub
		return travelDao.getYxByIdt(id);
	}

}
