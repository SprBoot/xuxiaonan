package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import InterfaceDao.noteDao;
import InterfaceService.noteService;
import entity.bj;
import entity.zstree;
import entity.zszy;

/**
*
* <p>Title:noteServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月2日下午8:39:23
* @version	2018
*/
@Service
public class noteServiceImpl implements noteService{
	@Autowired noteDao noteDao;
	@Override
	public bj getBjByIdt(int id) throws Exception {
		// TODO Auto-generated method stub
		return noteDao.getBjByIdt(id);
	}
	@Override
	public List<bj> getNewBj(int count) throws Exception {
		// TODO Auto-generated method stub
		return noteDao.getNewBj(count);
	}
	public List<zstree> getZstree() throws Exception {
		// TODO Auto-generated method stub
		return noteDao.getZstree();
	}
	public List<zszy> getZszy(int zyid) throws Exception {
		// TODO Auto-generated method stub
		return noteDao.getZszy(zyid);
	}

}
