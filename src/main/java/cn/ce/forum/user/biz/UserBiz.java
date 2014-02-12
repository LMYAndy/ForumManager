package cn.ce.forum.user.biz;

import java.util.Date;
import java.util.List;

import cn.ce.forum.user.pojo.entity.UserEntity;

public interface UserBiz {

	public List<UserEntity> findUsers(String name, Integer age, Integer sex, String email, String mobile, String account, String password, Date registerDate, String address, String post);
	
	public UserEntity findById( String id);
	
	public UserEntity findEntity( String account,String password,String email);
}
