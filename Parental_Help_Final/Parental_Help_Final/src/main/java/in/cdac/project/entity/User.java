package in.cdac.project.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ptId;

	@Column(nullable = false)
	private String ptName;

	@Column(nullable = false)
	private int ptAge;

	@Column(nullable = false, unique = true)
	private String ptGmail;

	@Column(nullable = false, unique = true)
	private String ptMobile;

	@Column(nullable = false, unique = true)
	private String ptUsername;

	@Column(nullable = false, unique = true)
	private String ptPassword;

	@OneToMany
	@JoinColumn(name = "ptId")
	private List<Appointment> appointments;

	public List<Appointment> getAppointments() {
		return appointments;
	}

	public void setAppointments(List<Appointment> appointments) {
		this.appointments = appointments;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String ptName, int ptAge, String ptGmail, String ptMobile, String ptUsername,
			String ptPassword) {
		super();
		this.ptName = ptName;
		this.ptAge = ptAge;
		this.ptGmail = ptGmail;
		this.ptMobile = ptMobile;
		this.ptUsername = ptUsername;
		this.ptPassword = ptPassword;
	}

	public int getPtId() {
		return ptId;
	}

	public void setPtId(int ptId) {
		this.ptId = ptId;
	}

	public String getPtName() {
		return ptName;
	}

	public void setPtName(String ptName) {
		this.ptName = ptName;
	}

	public int getPtAge() {
		return ptAge;
	}

	public void setPtAge(int ptAge) {
		this.ptAge = ptAge;
	}

	public String getPtGmail() {
		return ptGmail;
	}

	public void setPtGmail(String ptGmail) {
		this.ptGmail = ptGmail;
	}

	public String getPtMobile() {
		return ptMobile;
	}

	public void setPtMobile(String ptMobile) {
		this.ptMobile = ptMobile;
	}

	public String getPtUsername() {
		return ptUsername;
	}

	public void setPtUsername(String ptUsername) {
		this.ptUsername = ptUsername;
	}

	public String getPtPassword() {
		return ptPassword;
	}

	public void setPtPassword(String ptPassword) {
		this.ptPassword = ptPassword;
	}
	
	
	
	
	
}
