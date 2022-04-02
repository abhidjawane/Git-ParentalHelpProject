package in.cdac.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import in.cdac.project.entity.Vaccination;

public interface VaccinationRepository extends JpaRepository<Vaccination, Integer> {
	
	@Query("SELECT p FROM Vaccination p WHERE p.age_group LIKE %?1%"
            + " OR p.vaccination_date LIKE %?1%"
            + " OR p.vaccination_time LIKE %?1%"
            + " OR p.vaccination_name LIKE %?1%"
            + " OR p.vaccination_description LIKE %?1%"
            + " OR p.vaccination_camp_place LIKE %?1%"
            + " OR p.vaccination_camp_by LIKE %?1%"          
           )
	
	public List<Vaccination> search(String keyword);
 


}
