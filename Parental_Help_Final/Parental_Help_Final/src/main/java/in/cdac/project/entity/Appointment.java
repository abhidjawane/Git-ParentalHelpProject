package in.cdac.project.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "appointment")
public class Appointment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int aptId;

	@Column(nullable = false)
	private boolean aptStatus;

	@Column(nullable = false)
	private String aptDate;

	@Column(nullable = false)
	private int ptId;

	@Column(nullable = false)
	private int drId;

	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Appointment(boolean aptStatus, String aptDate, int ptId, int drId) {
		super();
		this.aptStatus = aptStatus;
		this.aptDate = aptDate;
		this.ptId = ptId;
		this.drId = drId;
	}

	public int getAptId() {
		return aptId;
	}

	public void setAptId(int aptId) {
		this.aptId = aptId;
	}

	public boolean isAptStatus() {
		return aptStatus;
	}

	public void setAptStatus(boolean aptStatus) {
		this.aptStatus = aptStatus;
	}

	public String getAptDate() {
		return aptDate;
	}

	public void setAptDate(String aptDate) {
		this.aptDate = aptDate;
	}

	public int getPtId() {
		return ptId;
	}

	public void setPtId(int ptId) {
		this.ptId = ptId;
	}

	public int getDrId() {
		return drId;
	}

	public void setDrId(int drId) {
		this.drId = drId;
	}

}
