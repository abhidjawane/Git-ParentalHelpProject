package in.cdac.project.entity ;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Babysitter {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String address;
	private String years;
	private String mobile;
	private String fees;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getYears() {
		return years;
	}


	public void setYears(String years) {
		this.years = years;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getFees() {
		return fees;
	}


	public void setFees(String fees) {
		this.fees = fees;
	}


	public Babysitter() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Babysitter(int id, String name, String address, String years, String mobile, String fees) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.years = years;
		this.mobile = mobile;
		this.fees = fees;
	}
	
	
	

}
