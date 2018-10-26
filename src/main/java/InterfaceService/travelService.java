package InterfaceService;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.yx;
import entity.sh;

/**
*
* <p>Title:travelService</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年7月29日下午1:40:37
* @version	2018
*/
@Service
public interface travelService {
	public List<sh> getShnr(int count)throws Exception;
	public List<yx> getYxlb()throws Exception;
	public yx getYxByIdt(int id) throws Exception;
	public sh getShByIdt(int id) throws Exception;
	public List<sh> getNewSh(int count)throws Exception;
}
