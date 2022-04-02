package in.cdac.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import in.cdac.project.entity.BabyName;

public interface BabyNameRepository extends JpaRepository<BabyName, Integer> {
	
	@Query("SELECT p FROM BabyName p WHERE p.name LIKE %?1%"
            + " OR p.meaning LIKE %?1%"
            + " OR p.sex LIKE %?1%"
             )
	
	public List<BabyName> search(String keyword);
 

}
