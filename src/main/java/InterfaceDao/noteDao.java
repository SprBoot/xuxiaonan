package InterfaceDao;
/**
*
* <p>Title:noteDao</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月2日下午8:37:39
* @version	2018
*/

import java.util.List;

import entity.bj;
import entity.zstree;
import entity.zszy;

public interface noteDao {
	public bj getBjByIdt(int id)throws Exception;
	public List<bj> getNewBj(int count)throws Exception;
	public List<zstree> getZstree()throws Exception;
	public List<zszy> getZszy(int zyid)throws Exception;
}
