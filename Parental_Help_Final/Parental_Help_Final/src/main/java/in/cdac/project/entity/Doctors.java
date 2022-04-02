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
public class Doctors {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int drId;
	
	@Column(nullable = false)
	private String drName;
	
	@Column(nullable = false)
	private String clName;
	
	@Column(nullable = false)
	private String clAdd;

	@Column(nullable = false)
	private String drSpec;

	@Column(nullable = false, unique = true)
	private String drEmail;

	@Column(nullable = false, unique = true)
	private String drMobile;

	@Column(nullable = false, unique = true)
	private String drUsername;

	@Column(nullable = false, unique = true)
	private String drPassword;
	
	

	@Column(nullable = false)
	private boolean drStatus;


	@OneToMany
	@JoinColumn(name = "drId")
	private List<Appointment> appointments;

	public List<Appointment> getAppointments() {
		return appointments;
	}

	public void setAppointments(List<Appointment> appointments) {
		this.appointments = appointments;
	}

	public Doctors() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctors(String drName, String clName,String clAdd, String drSpec, String drEmail, String drMobile, String drUsername,
			String drPassword, boolean drStatus) {
		super();
		this.drName = drName;
		this.clName = clName;
		this.clAdd=clAdd;
		this.drSpec = drSpec;
		this.drEmail = drEmail;
		this.drMobile = drMobile;
		this.drUsername = drUsername;
		this.drPassword = drPassword;
		this.drStatus = drStatus;
	}

	public int getDrId() {
		return drId;
	}

	public void setDrId(int drId) {
		this.drId = drId;
	}

	public String getDrName() {
		return drName;
	}

	public void setDrName(String drName) {
		this.drName = drName;
	}

	public String getClName() {
		return clName;
	}

	public void setClName(String clName) {
		this.clName = clName;
	}

	public String getClAdd() {
		return clAdd;
	}

	public void setClAdd(String clAdd) {
		this.clAdd = clAdd;
	}

	public String getDrSpec() {
		return drSpec;
	}

	public void setDrSpec(String drSpec) {
		this.drSpec = drSpec;
	}

	public String getDrEmail() {
		return drEmail;
	}

	public void setDrEmail(String drEmail) {
		this.drEmail = drEmail;
	}

	public String getDrMobile() {
		return drMobile;
	}

	public void setDrMobile(String drMobile) {
		this.drMobile = drMobile;
	}

	public String getDrUsername() {
		return drUsername;
	}

	public void setDrUsername(String drUsername) {
		this.drUsername = drUsername;
	}

	public String getDrPassword() {
		return drPassword;
	}

	public void setDrPassword(String drPassword) {
		this.drPassword = drPassword;
	}

	public boolean isDrStatus() {
		return drStatus;
	}

	public void setDrStatus(boolean drStatus) {
		this.drStatus = drStatus;
	}

	
}
