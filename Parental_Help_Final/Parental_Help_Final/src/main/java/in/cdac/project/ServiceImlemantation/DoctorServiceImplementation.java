package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.cdac.project.entity.Doctors;
import in.cdac.project.repository.DoctorsRepository;
import in.cdac.project.service.DoctorService;

@Service
@Transactional
public class DoctorServiceImplementation implements DoctorService{


	@Autowired
	DoctorsRepository doctorsRepository;
	
	@Override
	public void createDr(Doctors doctors) {
		// TODO Auto-generated method stub
		doctorsRepository.save(doctors);
		
		
	}

	//@PostMapping("/forgotPass")
	@Override
	public Doctors AuthentDrUnameGmail(String drUsername, String drEmail) {
		// TODO Auto-generated method stub
		Doctors doctors = doctorsRepository.findByDrUsernameAndDrEmail(drUsername, drEmail);
		if (doctors != null) {
			return doctors;
		} else {
			return null;
		}
	}

	
	@Override
	public Doctors AuthenticateDoctor(String drUsername) {
		// TODO Auto-generated method stub
		Doctors doctor = doctorsRepository.findByDrUsername(drUsername);
		if (doctor != null) {
			return doctor;
		} else {
			return null;
		}
	}

	@Override
	public List<Doctors> drList() {
		// TODO Auto-generated method stub
		List<Doctors> drList = doctorsRepository.findAll();
		return drList;
	}

	@Override
	public Doctors getDoctor(String drId) {
		// TODO Auto-generated method stub
		int doctId = Integer.parseInt(drId);
		Doctors doctor = doctorsRepository.findById(doctId).get();
		return doctor;
	}

	@Override
	public List<Doctors> allDoctor() {
		// TODO Auto-generated method stub
		List<Doctors> drList = doctorsRepository.findAll();
		return drList;
	}

	// update dr status
	// @PostMapping("/editDrStatus")
	@Override
	public void editDrStatus(String drId) {
		// TODO Auto-generated method stub
		int doctId = Integer.parseInt(drId);
		Doctors doctor = doctorsRepository.findById(doctId).get();
		if (doctor.isDrStatus() == true) {
			doctor.setDrStatus(false);
			doctorsRepository.save(doctor);
		} else {
			doctor.setDrStatus(true);
			doctorsRepository.save(doctor);
		}
		
	}

	// @PostMapping("/updateDr")
	@Override
	public Doctors updateDr(String id, String drName, String drSpec, int drExperience, int drFees, String drEmail,
			String drMobile, String drUsername, String drPassword, String hspId) {
		// TODO Auto-generated method stub
		int drId = Integer.parseInt(id);
		System.out.println(id);

		Doctors doctor = doctorsRepository.findById(drId).get();

		doctor.setDrName(drName);
		doctor.setDrSpec(drSpec);
		doctor.setDrExperience(drExperience);
		doctor.setDrFees(drFees);
		doctor.setDrEmail(drEmail);
		doctor.setDrMobile(drMobile);
		doctor.setDrUsername(drUsername);
		doctor.setDrPassword(drPassword);

		doctorsRepository.save(doctor);
		return doctor;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
		doctorsRepository.deleteById(id);
		
	}

}
