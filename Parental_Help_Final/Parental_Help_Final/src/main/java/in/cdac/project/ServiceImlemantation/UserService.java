package in.cdac.project.ServiceImlemantation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import in.cdac.project.entity.User;
import in.cdac.project.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;

	public void create(User user) {
		userRepository.save(user);
	}

	// @PostMapping("/forgotPass")
	public User AuthentPatUnameGml(String ptUsername, String ptGmail) {
		User user = userRepository.findByPtUsernameAndPtGmail(ptUsername, ptGmail);
		if (user != null) {
			return user;
		} else {
			return null;
		}
	}

	public User AuthenticateUser(String ptUsername, String ptPassword) {
		User user = userRepository.findByPtUsernameAndPtPassword(ptUsername, ptPassword);
		if (user != null) {
			return user;
		} else {
			return null;
		}
	}

	public User AuthenticateUserName(String ptUsername) {
		User user = userRepository.findByPtUsername(ptUsername);
		if (user != null) {
			return user;
		} else {
			return null;
		}
	}

	public User getSingleUser(String drId) {
		int doctId = Integer.parseInt(drId);
		User user = userRepository.findById(doctId).get();
		return user;
	}

	public List<User> getAllPatient() {
		List<User> UserList = userRepository.findAll();

		return UserList;
	}

	public User userupdated(String id, String ptName, String age, String ptGmail, String ptMobile, String ptUsername,
			String ptPassword) {
		int ptId = Integer.parseInt(id);
		int ptAge = Integer.parseInt(age);
		User user = userRepository.findById(ptId).get();

		if (user != null) {
			user.setPtId(ptId);
			user.setPtName(ptName);
			user.setPtAge(ptAge);
			user.setPtGmail(ptGmail);
			user.setPtMobile(ptMobile);
			user.setPtUsername(ptUsername);
			user.setPtPassword(ptPassword);
			userRepository.save(user);
			return user;
		} else {
			// check here this is null user
			return user;
		}
	}
}