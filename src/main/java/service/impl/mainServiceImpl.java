package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import InterfaceDao.mainDao;
import InterfaceService.mainService;
import entity.contact;

/**
*
* <p>Title:mainServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午2:51:10
* @version	2018
*/
@Service
public class mainServiceImpl implements mainService{
	@Autowired mainDao maindao;

	@Override
	public void insertLx(contact c) throws Exception {
		// TODO Auto-generated method stub
		maindao.insertLx(c);
	}
}
