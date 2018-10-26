package InterfaceService;

import org.springframework.stereotype.Service;

import entity.ts;

/**
*
* <p>Title:showService</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月3日下午7:52:13
* @version	2018
*/
@Service
public interface showService {
	public ts getSjByIdt(int id)throws Exception;
}
