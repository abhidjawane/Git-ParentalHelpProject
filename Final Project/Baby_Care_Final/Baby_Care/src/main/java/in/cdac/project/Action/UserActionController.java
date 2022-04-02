package in.cdac.project.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import in.cdac.project.ServiceImlemantation.AppointmentService;
import in.cdac.project.ServiceImlemantation.DoctorsService;
import in.cdac.project.ServiceImlemantation.MailSenderService;
import in.cdac.project.ServiceImlemantation.UserService;
import in.cdac.project.entity.Appointment;
import in.cdac.project.entity.Doctors;
import in.cdac.project.entity.User;

@Controller
public class UserActionController {

	@Autowired
	UserService userService;
	@Autowired
	DoctorsService doctorService;
	@Autowired
	AppointmentService appointmentService;
	@Autowired
	MailSenderService mailSenderService;

	@PostMapping("/registered")
	public ModelAndView create(String ptName, String age, String ptGmail, String ptMobile, String ptUsername,
			String ptPassword) {
		try {
			// encrypt pass using hashPassword() method
			ActionController actionController = new ActionController();
			String encrpPassUser = actionController.hashPassword(ptPassword);

			ModelAndView mv = new ModelAndView("register");
			int ptAge = Integer.parseInt(age);
			User user = new User(ptName, ptAge, ptGmail, ptMobile, ptUsername, encrpPassUser);
			userService.create(user);

			mailSenderService.sendSimpleEmail(ptGmail, "Dear " + ptName +"," +"\n"+"\n"
					+ "Congratulations! You have been registered successfully on BabyCare!! " +"\n" +"\n" +"Your login credentials are as follows:" +"\n"
					+ "UserName : " + ptUsername + "\n" +  "Password : " + ptPassword + "\n" +"\n" +"\n" + "Best regards," +"\n"+ "BabyCare Team." +"\n"+"\n"
							+ "Note: This is a system generated e-mail, please do not reply to it.","Registration Successful!");
			mv.addObject("patReg", 1);
			return mv;
			
			

		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("register");
			mv.addObject("patReg", 0);
			return mv;

		}
	}

	@PostMapping("/AuthUsrlogin")
	public ModelAndView AuthenticateUser(String ptUsername, String ptPassword, HttpServletRequest req,
			HttpServletRequest res) {

		try {
			User user = userService.AuthenticateUserName(ptUsername);

			if (user != null) {
				ActionController actionController = new ActionController();
				boolean passresult = actionController.checkPass(ptPassword, user.getPtPassword());
				if (passresult) {
					ModelAndView mv = new ModelAndView("Appointment");
					mv.addObject("user", user);
					HttpSession httpSession = req.getSession();
					httpSession.setAttribute("my-auth", 1);
					mv.addObject("userProf", 1);
					return mv;
				}
			}
			ModelAndView mv = new ModelAndView("register");
			mv.addObject("ptLogFail", 0);
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("register");
			mv.addObject("ptLogFail", 0);
			HttpSession session = req.getSession();
			session.setAttribute("my-auth", 0);
			return mv;

		}
	}

	// read all doctor list as per drId
	@GetMapping("/drList")
	public ModelAndView drList(String ptid) {
		List<Doctors> drList = doctorService.drList();
		User user = userService.getSingleUser(ptid);
		ModelAndView mv = new ModelAndView("bookAptShowDrList");
		mv.addObject("user", user); 
		mv.addObject("drList", drList);
		mv.addObject("DRLIST", 1);
		return mv;
	}

	@GetMapping("/aptBooking")
	public ModelAndView aptBooking(String appdate, String ptid, String drid) {
		User user = userService.getSingleUser(ptid);
		Doctors doctors= doctorService.getDoctor(drid);
	
    
		List<Doctors> drList = doctorService.drList();
		appointmentService.aptBooking(appdate, ptid, drid);
		ModelAndView mv = new ModelAndView("bookAptShowDrList");
		mv.addObject("user", user);
		mv.addObject("drList", drList);
		mv.addObject("b", 1);
		System.out.println("appointment booked succesfully");
		
		String Doc_mail=doctors.getDrEmail();
        String email=user.getPtGmail();
        String name=user.getPtName();
        String doc_name=doctors.getDrName();
       
		
		mailSenderService.sendSimpleEmail(email, "Dear " + name +"," +"\n"+"\n"+
				"Thank You " + name +"." +"\n"+"You have successfully scheduled an appointment with Dr. "+ doc_name+"."+ "\n" +"\n"  + 
				"Please contact "+ doc_name + " if any questions and keep me informed if there should be any changes."+ "\n" +"\n" +"\n" + "Best regards," +"\n"+ "BabyCare Team."+
				"\n" +"\n" +
				"Note: This is a system generated e-mail, please do not reply to it.","Appointment Successful!");
	
		
		mailSenderService.sendSimpleEmail(Doc_mail, "Dear Dr. " + doc_name +"," +"\n"+"\n"+
				"\n"+"You have an appointment with "+name+"."+ "\n"  + 
				"Please contact "+name+ " if any questions and keep me informed if there should be any changes."+ "\n" +"\n" +"\n" + "Best regards," +"\n"+ "BabyCare Team."+
				"\n" +"\n" +
				"Note: This is a system generated e-mail, please do not reply to it.","Appointment Successful!");
		
		mv.addObject("patReg", 1);
		return mv;
	}

	@GetMapping("/appointmentInfo")
	public ModelAndView appointmentInfo(String ptid) {
		User user = userService.getSingleUser(ptid);
		List<Appointment> appointments = appointmentService.AllpatAptlist(ptid);
		ModelAndView mv = new ModelAndView("appointmentInfo");
		mv.addObject("user", user);
		mv.addObject("appointments", appointments);

		List<Doctors> drList = doctorService.allDoctor();
		mv.addObject("drList", drList);
		return mv;
	}

	// user forgot password
	@PostMapping("/forgotPass")
	public ModelAndView forgotPass(String ptUsername, String ptPassword, String ptGmail) {
		User user = userService.AuthentPatUnameGml(ptUsername, ptGmail);
		if (user != null) {
			ModelAndView mv = new ModelAndView("forgotpassword_user");
			ActionController actionController = new ActionController();
			String encrpPassUser = actionController.hashPassword(ptPassword);
			user.setPtPassword(encrpPassUser);
			userService.create(user);
			/*
			 * mailSenderService.sendSimpleEmail(ptGmail, "Welcome back" + ptUsername +
			 * " You have successfully updated your Password with BabyCare... Now you can logIn with new credentials: "
			 * + "  Username: " + ptUsername + "   Password: " + ptPassword,
			 * "Password updated Successfull...!!!");
			 */
			mailSenderService.sendSimpleEmail(ptGmail, "Dear " + ptUsername +"," +"\n"+"\n"
					+ "Congratulations! Your password has been updated sucessful on BabyCare!! " +"\n" +"\n" +"Your new login credentials are as follows:" +"\n"
					+ "UserName : " + ptUsername + "\n" +  "Password : " + ptPassword + "\n" +"\n" +"\n" + "Best regards," +"\n"+ "BabyCare Team." +"\n"+"\n"
							+ "Note: This is a system generated e-mail, please do not reply to it.","Password Upadated!");
			mv.addObject("patReg", 1);
			mv.addObject("ptPassFail", 1);
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("forgotpassword_user");
			mv.addObject("ptPassFail", 0);
			return mv;
		}

	}

	// patient cancel
	@GetMapping("/aptCancel")
	public ModelAndView aptCancel(String ptid, String drid) {
		User user = userService.getSingleUser(ptid);
		Doctors doctors=doctorService.getDoctor(drid);
		appointmentService.aptCancel(ptid, drid);
		ModelAndView mv = new ModelAndView("appointmentInfo");
		List<Appointment> appointments = appointmentService.AllpatAptlist(ptid);

		List<Doctors> drList = doctorService.allDoctor();
		mv.addObject("drList", drList);
		mv.addObject("user", user);
		mv.addObject("c", 1);
		System.out.println("appointment cancelled");
		mv.addObject("appointments", appointments);
		
		String Doc_mail=doctors.getDrEmail();
        String email=user.getPtGmail();
        String name=user.getPtName();
        String doc_name=doctors.getDrName();
      
	
		mailSenderService.sendSimpleEmail(email, "Dear " + name +"," +"\n"+"\n"+
				"\n"+"Your appointment has been cancelled with Dr. "+ doc_name+"."+ "\n" +"\n"  + 
				"Please contact Dr. "+ doc_name + " if any questions and keep me informed if there should be any changes."+ "\n" +"\n" +"\n" + "Best regards," +"\n"+ "BabyCare Team."+
				"\n" +"\n" +
				"Note: This is a system generated e-mail, please do not reply to it.","Appointment Cancelled!");
		
		mailSenderService.sendSimpleEmail(Doc_mail, "Dear Dr. " + doc_name +"," +"\n"+"\n"+
				"\n"+"Your appointment has been cancelled with "+name+"."+ "\n"  + 
				"Please contact  "+name+ " if any questions and keep me informed if there should be any changes."+ "\n" +"\n" +"\n" + "Best regards," +"\n"+ "BabyCare Team."+
				"\n" +"\n" +
				"Note: This is a system generated e-mail, please do not reply to it.","Appointment Cancelled!");
		
		
		return mv;
	}

		@GetMapping("/showUserProf")
	public ModelAndView showUserProf(String ptid) {
		User user = userService.getSingleUser(ptid);
		ModelAndView mv = new ModelAndView("Appointment");
		mv.addObject("user", user);
		mv.addObject("userProf", 1);
		return mv;
	}

	// provide editable window to user
	@GetMapping("/update-opt")
	public ModelAndView userUpdateOpt(String ptid) {
		User user = userService.getSingleUser(ptid);
		if (user != null) {
			ModelAndView mv = new ModelAndView("updateUserProfile");
			mv.addObject("user", user);
			mv.addObject("u", 2);
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("updateUserProfile");
			mv.addObject("user", user);
			mv.addObject("u", 3);
			return mv;
		}
	}
	
	// updation of user done
		@GetMapping("/upd-user")
		public ModelAndView userupdated(String id, String ptName, String age, String ptGmail, String ptMobile,
				String ptUsername, String ptPassword) {
			ActionController actionController = new ActionController();
			String encrpPassUser = actionController.hashPassword(ptPassword);
			User user1 = userService.getSingleUser(id);
			User user = userService.userupdated(id, ptName, age, ptGmail, ptMobile, ptUsername, encrpPassUser);
			if (user1 != null) {
				ModelAndView mv = new ModelAndView("updateUserProfile");
				mv.addObject("user", user1);
				mv.addObject("u", 1);
				return mv;
			} else {
				ModelAndView mv = new ModelAndView("updateUserProfile");
				mv.addObject("user", user);
				mv.addObject("u", 0);
				return mv;
			}

		}



}