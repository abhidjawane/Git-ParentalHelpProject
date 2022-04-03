package in.cdac.project.service;

import java.util.List;

import in.cdac.project.entity.Doctors;

public interface DoctorService {
	
	public void createDr(Doctors doctors);
	
	public Doctors AuthentDrUnameGmail(String drUsername, String drEmail);
	
	public Doctors AuthenticateDoctor(String drUsername);
	
	public List<Doctors> drList();
	
	public Doctors getDoctor(String drId);
	
	public List<Doctors> allDoctor();
	
	public void editDrStatus(String drId);
	
	public Doctors updateDr(String id, String drName, String drSpec, int drExperience, int drFees, String drEmail, String drMobile, String drUsername,
			String drPassword, String hspId);

	public void delete(int id);

	

}
