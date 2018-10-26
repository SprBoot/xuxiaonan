package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import InterfaceDao.mformDao;
import InterfaceService.mformService;
import entity.xmcy;
import entity.Page;
import entity.bj;
import entity.bjlx;
import entity.nlms;
import entity.pic;
import entity.sh;
import entity.ts;
import entity.user;
import entity.xm;
import entity.xmms;
import entity.yx;
import entity.zssp;

/**
*
* <p>Title:mformServiceImpl</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年6月13日下午3:09:27
* @version	2018
*/
@Service
public class mformServiceImpl implements mformService{
	@Autowired mformDao mformDao;

	@Override
	public void updateJs(user user) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateJs(user);
	}

	@Override
	public List<zssp> getZssp() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getZssp();
	}

	@Override
	public void updateZssp(zssp zssp) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateZssp(zssp);;
	}

	@Override
	public List<nlms> getNl() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getNl();
	}

	@Override
	public void updateNl(nlms nlms) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateNl(nlms);
	}

	@Override
	public List<xm> getXm() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getXm();
	}

	@Override
	public xmms getXmms(int xmid) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getXmms(xmid);
	}

	@Override
	public List<xmcy> getCy(int cyid) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getCy(cyid);
	}

	@Override
	public void insertPic(pic pic) throws Exception {
		// TODO Auto-generated method stub
		mformDao.insertPic(pic);
	}

	@Override
	public void updateXm(xmms xmms) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateXm(xmms);
	}

	@Override
	public void insertSh(sh sh) throws Exception {
		// TODO Auto-generated method stub
		mformDao.insertSh(sh);
	}

	@Override
	public List<sh> getSh(int count) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getSh(count);
	}

	@Override
	public void updateSh(sh sh) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateSh(sh);
	}

	@Override
	public void insertYx(yx yx) throws Exception {
		// TODO Auto-generated method stub
		mformDao.insertYx(yx);
	}

	@Override
	public void updateYx(yx yx) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateYx(yx);
	}

	@Override
	public List<yx> getYx(int count) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getYx(count);
	}

	@Override
	public void updatePic(pic pic) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updatePic(pic);
	}

	@Override
	public pic getPic(String pid) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getPic(pid);
	}

	@Override
	public user getJs() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getJs();
	}

	@Override
	public sh getShById(int id) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getShById(id);
	}

	@Override
	public List<sh> getShByCount(Page page) throws Exception {
		// TODO Auto-generated method stub
		int start = page.getCurrentResult();
		int end = start+page.getLimit();
		return mformDao.getShByCount(start,end-start);
	}

	@Override
	public int getShCount() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getShCount();
	}

	@Override
	public void deleteSh(sh sh) throws Exception {
		// TODO Auto-generated method stub
		mformDao.deleteSh(sh);
	}

	@Override
	public yx getYxById(int id) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getYxById(id);
	}

	@Override
	public void deleteYx(yx yx) throws Exception {
		// TODO Auto-generated method stub
		mformDao.deleteYx(yx);
	}
	@Override
	public List<yx> getYxByCount(Page page) throws Exception {
		// TODO Auto-generated method stub
		int start = page.getCurrentResult();
		int end = start+page.getLimit();
		return mformDao.getYxByCount(start,end-start);
	}

	@Override
	public int getYxCount() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getYxCount();
	}

	@Override
	public void insertBj(bj bj) throws Exception {
		// TODO Auto-generated method stub
		mformDao.insertBj(bj);
	}

	@Override
	public List<bj> getBj(int count) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getBj(count);
	}

	@Override
	public bj getBjById(int id) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getBjById(id);
	}

	@Override
	public List<bj> getBjByCount(Page page) throws Exception {
		// TODO Auto-generated method stub
		int start = page.getCurrentResult();
		int end = start+page.getLimit();
		return mformDao.getBjByCount(start,end-start);
	}

	@Override
	public int getBjCount() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getBjCount();
	}

	@Override
	public void deleteBj(bj bj) throws Exception {
		// TODO Auto-generated method stub
		mformDao.deleteBj(bj);
	}

	@Override
	public void insertSj(ts ts) throws Exception {
		// TODO Auto-generated method stub
		mformDao.insertSj(ts);
	}

	@Override
	public List<ts> getSj(int count) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getSj(count);
	}

	@Override
	public ts getSjById(int id) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getSjById(id);
	}

	@Override
	public void updateSj(ts ts) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateSj(ts);
	}

	@Override
	public void deleteSj(ts ts) throws Exception {
		// TODO Auto-generated method stub
		mformDao.deleteSj(ts);
	}

	@Override
	public List<ts> getSjByCount(Page page) throws Exception {
		// TODO Auto-generated method stub
		int start = page.getCurrentResult();
		int end = start+page.getLimit();
		return mformDao.getSjByCount(start,end-start);
	}

	@Override
	public int getSjCount() throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getSjCount();
	}

	@Override
	public void updateBj(bj bj) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateBj(bj);
	}

	@Override
	public void insertBjlx(bjlx bjlx) throws Exception {
		// TODO Auto-generated method stub
		mformDao.insertBjlx(bjlx);
	}

	@Override
	public bjlx getBjlxById(String lxid) throws Exception {
		// TODO Auto-generated method stub
		return mformDao.getBjlxById(lxid);
	}

	@Override
	public void updateBjlx(bjlx bjlx) throws Exception {
		// TODO Auto-generated method stub
		mformDao.updateBjlx(bjlx);
	}

	
}
