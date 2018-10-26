package InterfaceService;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.bj;
import entity.zstree;
import entity.zszy;

/**
*
* <p>Title:noteService</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年8月2日下午8:38:26
* @version	2018
*/
@Service
public interface noteService {
	public bj getBjByIdt(int id)throws Exception;
	public List<bj> getNewBj(int count)throws Exception;
	public List<zstree> getZstree()throws Exception;
	public List<zszy> getZszy(int zyid)throws Exception;
}
