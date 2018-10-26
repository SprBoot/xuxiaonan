package InterfaceService;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.contact;

/**
*
* <p>Title:mainService</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年5月9日下午2:49:44
* @version	2018
*/
@Service
public interface mainService {
	public void insertLx(contact c)throws Exception;
	
}
