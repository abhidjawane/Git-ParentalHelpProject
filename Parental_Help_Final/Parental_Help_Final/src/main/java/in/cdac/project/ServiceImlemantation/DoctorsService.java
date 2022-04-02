package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.cdac.project.entity.Doctors;

import in.cdac.project.repository.DoctorsRepository;

@Service
public class DoctorsService {

	@Autowired
	DoctorsRepository doctorsRepository;

	public void createDr(Doctors doctors) {
		doctorsRepository.save(doctors);
	}

//@PostMapping("/forgotPass")
	public Doctors AuthentDrUnameGmail(String drUsername, String drEmail) {
		Doctors doctors = doctorsRepository.findByDrUsernameAndDrEmail(drUsername, drEmail);
		if (doctors != null) {
			return doctors;
		} else {
			return null;
		}
	}

	public Doctors AuthenticateDoctor(String drUsername) {
		Doctors doctor = doctorsRepository.findByDrUsername(drUsername);
		if (doctor != null) {
			return doctor;
		} else {
			return null;
		}
	}

	public List<Doctors> drList() {
		List<Doctors> drList = doctorsRepository.findAll();
		return drList;
	}

	public Doctors getDoctor(String drId) {
		int doctId = Integer.parseInt(drId);
		Doctors doctor = doctorsRepository.findById(doctId).get();
		return doctor;
	}

	public List<Doctors> allDoctor() {
		List<Doctors> drList = doctorsRepository.findAll();
		return drList;
	}

	// update dr status
	// @PostMapping("/editDrStatus")
	public void editDrStatus(String drId) {
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
	public Doctors updateDr(String id, String drName, String drSpec, String drEmail, String drMobile, String drUsername,
			String drPassword, String hspId) {
		int drId = Integer.parseInt(id);
		System.out.println(id);

		Doctors doctor = doctorsRepository.findById(drId).get();

		doctor.setDrName(drName);
		doctor.setDrSpec(drSpec);
		doctor.setDrEmail(drEmail);
		doctor.setDrMobile(drMobile);
		doctor.setDrUsername(drUsername);
		doctor.setDrPassword(drPassword);

		doctorsRepository.save(doctor);
		return doctor;
	}

}