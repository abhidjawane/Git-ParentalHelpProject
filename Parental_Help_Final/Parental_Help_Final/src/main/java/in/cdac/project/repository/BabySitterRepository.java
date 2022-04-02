package in.cdac.project.repository ;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import in.cdac.project.entity.Babysitter;

public interface BabySitterRepository extends JpaRepository<Babysitter, Integer>{
	
	@Query("SELECT p FROM Babysitter p WHERE p.name LIKE %?1%"
            + " OR p.address LIKE %?1%"
            + " OR p.years LIKE %?1%"
            + " OR p.mobile LIKE %?1%"
            + " OR p.fees LIKE %?1%"
            

           )
	
	public List<Babysitter> search(String keyword);
 

}


