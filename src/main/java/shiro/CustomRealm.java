package shiro;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import InterfaceService.userService;
import entity.permission;
import entity.vuser;
import service.impl.userServiceImpl;

/**
*
* <p>Title:CustomRealm</p>
* <p>Description:TODO</p>
* <p>PersonWeb:www.xuxiaonan.cn</p>
* @author	dinggc
* @date		2018年9月11日下午6:51:21
* @version	2018
*/
public class CustomRealm extends AuthorizingRealm{
	@Autowired userServiceImpl userService;
	//设置realm的名称
	@Override
	public void setName(String name) {
		super.setName("customRealm");;
	}
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		//token是用户输入的
		//第一步从token中取出身份信息
		String userCode = (String)token.getPrincipal();
		vuser vuser = null;
		try {
			vuser = userService.getUser(userCode);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//模拟从数据库查询密码
		//如果查询不到返回null
		//数据库中用户账号是zhangsan
		if(vuser==null) {
			return null;
		}
		String PIN = vuser.getPassword();
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(vuser, PIN,this.getName());
		return simpleAuthenticationInfo;
	}
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		//从principals获取主身份信息
		//将getPrimaryPrincipal方法返回值转为真实身份信息(在上边的doGetAuthecticationInfo认证通过填充到SimpleAuthenticationInfo)
		vuser vuser = (vuser) principals.getPrimaryPrincipal();
		//根据信息获取权限信息
		//连接数据库。。。
		//模拟从数据库获取到数据
		List<permission> permissions = null;
		try {
			permissions = userService.getPermission(vuser.getId());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//...
		List<String> permission = new ArrayList<String>();
		for(permission syspermission:permissions) {
			permission.add(syspermission.getPermission());
		}
		//查询到权限数据，返回
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		//将上边查询到授权信息填充到simpleAuthorizationInfo对象中
		simpleAuthorizationInfo.addStringPermissions(permission);		
		return simpleAuthorizationInfo;
	}
}
