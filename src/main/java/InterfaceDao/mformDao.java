package InterfaceDao;
/**
*
* <p>Title:mformDao</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年6月13日下午3:01:04
* @version	2018
*/

import java.sql.Date;
import java.util.List;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;

import entity.bj;
import entity.bjlx;
import entity.nlms;
import entity.pic;
import entity.sh;
import entity.ts;
import entity.user;
import entity.xm;
import entity.xmcy;
import entity.xmms;
import entity.yx;
import entity.zssp;

public interface mformDao {
	public void updateJs(user user)throws Exception;
	public user getJs()throws Exception;
	public List<zssp> getZssp()throws Exception;
	public void updateZssp(zssp zssp)throws Exception;
	public List<nlms> getNl()throws Exception;
	public void updateNl(nlms nlms)throws Exception;
	public List<xm> getXm()throws Exception;
	public xmms getXmms(int xmid)throws Exception;
	public List<xmcy> getCy(int cyid)throws Exception;
	public void insertPic(pic pic)throws Exception;
	public void updateXm(xmms xmms)throws Exception;
	public void insertSh(sh sh)throws Exception;
	public List<sh> getSh(int count)throws Exception;
	public List<bj> getBj(int count)throws Exception;
	public void updateSh(sh sh)throws Exception;
	public void insertYx(yx yx)throws Exception;
	public void updateYx(yx yx)throws Exception;
	public List<yx> getYx(int count)throws Exception;
	public void updatePic(pic pic)throws Exception;
	public pic getPic(String pid)throws Exception;
	public sh getShById(int id)throws Exception;
	public yx getYxById(int id)throws Exception;
	public List<sh> getShByCount(int start,int end)throws Exception;
	public int getShCount()throws Exception;
	public List<bj> getBjByCount(int start,int end)throws Exception;
	public int getBjCount()throws Exception;
	public List<yx> getYxByCount(int start,int end)throws Exception;
	public int getYxCount()throws Exception;
	public void deleteSh(sh sh)throws Exception;
	public void deleteYx(yx yx)throws Exception;
	public void deleteBj(bj bj)throws Exception;
	public void insertBj(bj bj)throws Exception;
	public bj getBjById(int id)throws Exception;
	public void insertSj(ts ts)throws Exception;
	public List<ts> getSj(int count)throws Exception;
	public ts getSjById(int id)throws Exception;
	public void updateSj(ts ts)throws Exception;
	public void deleteSj(ts ts)throws Exception;
	public List<ts> getSjByCount(int start,int end)throws Exception;
	public int getSjCount()throws Exception;
	public void updateBj(bj bj)throws Exception;
	public void insertBjlx(bjlx bjlx)throws Exception;
	public bjlx getBjlxById(String lxid)throws Exception;
	public void updateBjlx(bjlx bjlx)throws Exception;
}
