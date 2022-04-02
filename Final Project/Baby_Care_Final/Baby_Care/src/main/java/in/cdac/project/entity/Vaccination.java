package in.cdac.project.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Vaccination {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String age_group;
	private String vaccination_date;
	private String vaccination_time;
	private String vaccination_name;
	private String vaccination_description;
	private String vaccination_camp_place;
	private String vaccination_camp_by;

	public Vaccination() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Vaccination(int id, String age_group, String vaccination_date, String vaccination_time,
			String vaccination_name, String vaccination_description, String vaccination_camp_place,
			String vaccination_camp_by) {
		super();
		this.id = id;
		this.age_group = age_group;
		this.vaccination_date = vaccination_date;
		this.vaccination_time = vaccination_time;
		this.vaccination_name = vaccination_name;
		this.vaccination_description = vaccination_description;
		this.vaccination_camp_place = vaccination_camp_place;
		this.vaccination_camp_by = vaccination_camp_by;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAge_group() {
		return age_group;
	}

	public void setAge_group(String age_group) {
		this.age_group = age_group;
	}

	public String getVaccination_date() {
		return vaccination_date;
	}

	public void setVaccination_date(String vaccination_date) {
		this.vaccination_date = vaccination_date;
	}

	public String getVaccination_time() {
		return vaccination_time;
	}

	public void setVaccination_time(String vaccination_time) {
		this.vaccination_time = vaccination_time;
	}

	public String getVaccination_name() {
		return vaccination_name;
	}

	public void setVaccination_name(String vaccination_name) {
		this.vaccination_name = vaccination_name;
	}

	public String getVaccination_description() {
		return vaccination_description;
	}

	public void setVaccination_description(String vaccination_description) {
		this.vaccination_description = vaccination_description;
	}

	public String getVaccination_camp_place() {
		return vaccination_camp_place;
	}

	public void setVaccination_camp_place(String vaccination_camp_place) {
		this.vaccination_camp_place = vaccination_camp_place;
	}

	public String getVaccination_camp_by() {
		return vaccination_camp_by;
	}

	public void setVaccination_camp_by(String vaccination_camp_by) {
		this.vaccination_camp_by = vaccination_camp_by;
	}

}
