package cn.ce.forum.user.pojo.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import cn.ce.framework.support.BaseEntity;

@Entity
@Table(name = "BBS_USER")
public class UserEntity  extends BaseEntity{


	/**
	 * 
	 */
	private static final long serialVersionUID = 4229930169538471947L;

	
	@Id
	@Column(name = "ID")
	private String id;

	@Column(name = "NAME")
	private String name;
	
	@Column(name = "REAL_NAME")
	private String realName;
	
	@Column(name = "AGE")
	private Integer age;
	
	@Column(name = "SEX")
	private Integer sex;

	@Column(name = "EMAIL")
	private String email;

	@Column(name = "BIRTHDAY")
	private String birthday;
	
	@Column(name = "MOBILE")
	private String mobile;

	@Column(name = "QQ")
	private String qq;
	
	@Column(name = "ACCOUNT")
	private String account;
  
	@Column(name = "PASSOWORD")
	private String password;

	@Column(name = "REGISTER_DATE")
	private Date registerDate;
	
	@Column(name = "ADDRESS")
	private String address;
 
	@Column(name = "POST")
	private String post;
	
	@Column(name = "EMATION_STATE")
	private Integer emationState;

	@Column(name = "BLOOD_TYPE")
	private Integer bloodType;
	 
	@Column(name = "IMAGE_PATH")
	private String imagePath;
	
	
	@Column(name = "CERTIFICATE_TYPE")
	private Integer certificateType;
	
	@Column(name = "CERTIFICATE")
	private String certificate;
	
	@Column(name = "EDUCTAION")
	private String education;
	
	@Column(name = "SCHOOL")
	private String school;
	
	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}


	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}


	public UserEntity(){
		super();
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Integer getEmationState() {
		return emationState;
	}

	public void setEmationState(Integer emationState) {
		this.emationState = emationState;
	}

	public Integer getBloodType() {
		return bloodType;
	}

	public void setBloodType(Integer bloodType) {
		this.bloodType = bloodType;
	}

	public Integer getCertificateType() {
		return certificateType;
	}

	public void setCertificateType(Integer certificateType) {
		this.certificateType = certificateType;
	}

	public String getCertificate() {
		return certificate;
	}

	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}
	
}
