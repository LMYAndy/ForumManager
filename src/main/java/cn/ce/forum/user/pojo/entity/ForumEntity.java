package cn.ce.forum.user.pojo.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import cn.ce.framework.support.BaseEntity;

@Entity
@Table(name = "BBS_FORUM")
public class ForumEntity extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8984255448176444963L;

	@Id
	@Column(name = "ID")
	private String id;

	@Column(name = "TITLE")
	private String title;
	
	@Column(name = "CLICK")
	private Integer click;
	
	@Column(name = "USER_ID")
	private Integer userId;
	
	@Column(name = "ISSUE_TIME")
	private Date issueTime;
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getClick() {
		return click;
	}

	public void setClick(Integer click) {
		this.click = click;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getIssueTime() {
		return issueTime;
	}

	public void setIssueTime(Date issueTime) {
		this.issueTime = issueTime;
	}

	 
	

}
