package cn.ce.forum.user.dao.impl;

import org.springframework.stereotype.Repository;

import cn.ce.forum.user.dao.UserDao;
import cn.ce.forum.user.pojo.entity.UserEntity;
import cn.ce.framework.support.BaseDAO;

@Repository
public class UserDaoImpl extends BaseDAO implements UserDao{

	/**
	 * 
	 */
	private static final long serialVersionUID = -970898850378997131L;

	@Override
	public UserEntity findById(String id) {
		return (UserEntity) getSession().get(UserEntity.class, id);
	}

}
