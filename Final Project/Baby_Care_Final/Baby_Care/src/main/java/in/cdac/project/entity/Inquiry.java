package in.cdac.project.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Inquiry {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String users_name;
	private String email;
	private String mobile;
	private String subject;
	private String detail_Description;

	public Inquiry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inquiry(String users_name, String email, String mobile, String subject, String detail_Description) {
		super();
	
		this.users_name = users_name;
		this.email = email;
		this.mobile = mobile;
		this.subject = subject;
		this.detail_Description = detail_Description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsers_name() {
		return users_name;
	}

	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDetail_Description() {
		return detail_Description;
	}

	public void setDetail_Description(String detail_Description) {
		this.detail_Description = detail_Description;
	}

}
