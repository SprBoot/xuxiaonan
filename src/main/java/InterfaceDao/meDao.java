package InterfaceDao;
/**
*
* <p>Title:meDao</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午5:00:31
* @version	2018
*/

import java.util.List;

import entity.nlms;
import entity.zssp;
import entity.user;
import entity.xm;
import entity.xmcy;
import entity.xmms;

public interface meDao {
	public user getUser()throws Exception;
	public List<zssp> getIntro()throws Exception;
	public List<nlms> getExper()throws Exception;
	public List<xm> getXm()throws Exception;
	public List<xmms> getXmms()throws Exception;
	public List<xmcy> getXmcy()throws Exception;
}
