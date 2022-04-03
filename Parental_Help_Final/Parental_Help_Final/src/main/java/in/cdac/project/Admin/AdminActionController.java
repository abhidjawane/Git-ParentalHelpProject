package in.cdac.project.Admin;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminActionController {

	
	@RequestMapping("/admin")
	public ModelAndView AdminPage() {
		return new ModelAndView("AdminLoginForm");
	}

	@PostMapping("/adminlogin")
	public ModelAndView AuthenticateAdmin(String admUsername, String admPassword, HttpServletRequest req,
			HttpServletRequest res) {
		String adminusername = "Admin";
		String adminpassword = "Admin@123";
		if ((adminusername.equals(admUsername)) && (adminpassword.equals(admPassword))) {
			

			HttpSession httpSession = req.getSession();
			httpSession.setAttribute("my-auth", 1);
			System.out.println("Admin login Successfully");
			return new ModelAndView("redirect:/list");
		

		} else {
			ModelAndView mv = new ModelAndView("AdminLoginForm");
			mv.addObject("AdmLogFail", 0);
			HttpSession session = req.getSession();
			session.setAttribute("my-auth", 0);
			return mv;
		}
	}

	@RequestMapping("/logout")
	public ModelAndView Logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return new ModelAndView("home");
	}

}
