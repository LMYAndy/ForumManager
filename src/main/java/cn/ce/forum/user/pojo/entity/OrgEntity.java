package cn.ce.forum.user.pojo.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import cn.ce.framework.support.BaseEntity;

@Entity
@Table(name = "BBS_ORG")
public class OrgEntity  extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8984255448176444963L;

	@Id
	@Column(name = "ID")
	private String id;

	@Column(name = "NAME")
	private String name;
	
	@Column(name = "PARENT_ID")
	private String parentId;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	

}
