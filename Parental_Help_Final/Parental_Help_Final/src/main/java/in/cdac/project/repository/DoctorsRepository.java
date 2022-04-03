package in.cdac.project.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import in.cdac.project.entity.Doctors;

public interface DoctorsRepository extends JpaRepository<Doctors, Integer> {
	

	Doctors findByDrUsername(String drUsername);
	
	Doctors findByDrUsernameAndDrEmail(String drUsername,String drEmail);
	
	
}
