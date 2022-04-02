package in.cdac.project.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ActionController {

	@Autowired
	HttpSession session;

	@RequestMapping("/")
	public ModelAndView indexpage() {

		return new ModelAndView("Home");

	}

	@RequestMapping("/home")
	public ModelAndView homepage() {

		return new ModelAndView("Home");

	}

	@RequestMapping("/food")
	public ModelAndView babyfood() {

		return new ModelAndView("BabyFood");

	}

	@RequestMapping("/product")
	public ModelAndView babyproduct() {

		return new ModelAndView("BabyProduct");

	}

	@RequestMapping("/tips")
	public ModelAndView babytips() {

		return new ModelAndView("BabyTips");

	}

	@RequestMapping("/mustwatch")
	public ModelAndView mustWatch() {

		return new ModelAndView("MustWatch");

	}

	@RequestMapping("/others")
	public ModelAndView others() {

		return new ModelAndView("Others");

	}

	@RequestMapping("/aboutus")
	public ModelAndView aboutus() {

		return new ModelAndView("AboutUs");

	}

	@GetMapping("/userforgotpassword")
	public ModelAndView UserForgotPassword() {
		ModelAndView mv = new ModelAndView("forgotpassword_user");
		return mv;
	}

	@GetMapping("/doctorforgotpassword")
	public ModelAndView DoctorForgotPassword() {
		ModelAndView mv = new ModelAndView("forgotpassword_doctor");
		return mv;
	}

	@GetMapping("/register")
	public ModelAndView create() {
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}

	@GetMapping("/Doctregister")
	public ModelAndView Doctregister() {
		ModelAndView mv = new ModelAndView("DrLogReg");
		return mv;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpServletRequest req, HttpServletRequest res) {
		ModelAndView mv = new ModelAndView("Home");
		req.removeAttribute("my-auth");
		session.invalidate();

		return mv;
	}

	// Methods for Encrypt Password

	public String hashPassword(String plainTextPassword) {
		return BCrypt.hashpw(plainTextPassword, BCrypt.gensalt());
	}

	public boolean checkPass(String plainPassword, String hashedPassword) {
		if (BCrypt.checkpw(plainPassword, hashedPassword)) {
			System.out.println(plainPassword + hashedPassword);
			System.out.println("The password matches.");
			return true;
		} else {
			System.out.println(plainPassword + hashedPassword);
			System.out.println("The password does not match.");
			return false;
		}
	}

}