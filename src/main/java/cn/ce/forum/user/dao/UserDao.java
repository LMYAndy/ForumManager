package cn.ce.forum.user.dao;

import cn.ce.forum.user.pojo.entity.UserEntity;

public interface UserDao {

	public UserEntity findById(String id);

}
