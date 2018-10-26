package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import InterfaceDao.meDao;
import InterfaceService.meService;
import entity.nlms;
import entity.zssp;
import entity.user;
import entity.xm;
import entity.xmcy;
import entity.xmms;

/**
*
* <p>Title:meServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午5:01:24
* @version	2018
*/
@Service
public class meServiceImpl implements meService{
	@Autowired meDao medao;
	@Override
	public user getUser() throws Exception {
		// TODO Auto-generated method stub
		return medao.getUser();
	}
	@Override
	public List<zssp> getIntro() throws Exception {
		// TODO Auto-generated method stub
		return medao.getIntro();
	}
	@Override
	public List<nlms> getExper() throws Exception {
		// TODO Auto-generated method stub
		return medao.getExper();
	}
	@Override
	public List<xm> getXm() throws Exception {
		// TODO Auto-generated method stub
		return medao.getXm();
	}
	@Override
	public List<xmms> getXmms() throws Exception {
		// TODO Auto-generated method stub
		return medao.getXmms();
	}
	@Override
	public List<xmcy> getXmcy() throws Exception {
		// TODO Auto-generated method stub
		return medao.getXmcy();
	}
	
}
