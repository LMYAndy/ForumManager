package cn.ce.forum.user.web.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.ce.forum.user.biz.UserBiz;
import cn.ce.forum.user.pojo.entity.UserEntity;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
@Namespace(value = "/user/userAction")
public class UserAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -149404639491883491L;

	@Resource(name="userBiz")
	private UserBiz userBiz;

	private UserEntity user;  

	private String account;
	
	private String password;
	
	private String email;
	
	@Action(value = "findUsers", results = { @Result(name = "success", location = "/login/jsp/login.jsp") })
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public String findUsers() {
		user = userBiz.findById("1");
		return SUCCESS;
	}

	@Action(value = "login", results = { @Result(name = "success", location = "/login/jsp/index.jsp") })
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public String login() {
		user = userBiz.findEntity(account, password, email);
		return SUCCESS;
	}

	
	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	
}
