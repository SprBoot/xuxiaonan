package InterfaceDao;

import java.util.List;

import entity.sh;
import entity.yx;

/**
*
* <p>Title:travelDao</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年7月29日下午1:40:12
* @version	2018
*/
public interface travelDao {
	public List<sh> getShnr(int count)throws Exception;
	public List<yx> getYxlb()throws Exception;
	public sh getShByIdt(int id) throws Exception;
	public yx getYxByIdt(int id) throws Exception;
	public List<sh> getNewSh(int count)throws Exception;
}
