package InterfaceService;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.nlms;
import entity.zssp;
import entity.user;
import entity.xm;
import entity.xmcy;
import entity.xmms;

/**
*
* <p>Title:meService</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午5:01:05
* @version	2018
*/
@Service
public interface meService {
	public user getUser()throws Exception;
	public List<zssp> getIntro()throws Exception;
	public List<nlms> getExper()throws Exception;
	public List<xm> getXm()throws Exception;
	public List<xmms> getXmms()throws Exception;
	public List<xmcy> getXmcy()throws Exception;
}
