package in.cdac.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.cdac.project.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	User findByPtUsernameAndPtPassword(String ptUsername,String ptPassword);
	
	User findByPtUsername(String ptUsername);
	
	User findByPtUsernameAndPtGmail(String ptUsername,String ptGmail);
	
}
