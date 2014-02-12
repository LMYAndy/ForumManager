package cn.ce.forum.user.biz.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.ce.forum.common.CommonDAO;
import cn.ce.forum.user.biz.UserBiz;
import cn.ce.forum.user.dao.UserDao;
import cn.ce.forum.user.pojo.entity.UserEntity;

@Service("userBiz")
public class UserBizImpl implements UserBiz,Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2086277070268915146L;
	@Resource
	private UserDao userDao;
	
	@Resource
	private CommonDAO<UserEntity> dao ;
	
	@Override 
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public List<UserEntity> findUsers(String name, Integer age, Integer sex,
			String mail, String mobile, String account, String password,
			Date registerDate, String address, String post) {
		return null;
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public UserEntity findById(String id) {
		return userDao.findById(id);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public UserEntity findEntity(String account, String password, String email) {
		Map<String,Object> args = new HashMap<String, Object>();
		args.put("account", account);
		args.put("password",password);
		args.put("email", email);
		return dao.findObject("UserEntity",args);
	}

}
