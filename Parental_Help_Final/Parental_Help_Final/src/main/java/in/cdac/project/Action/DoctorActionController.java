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
public class DoctorActionController {

	@Autowired
	UserService userService;
	@Autowired
	DoctorsService doctorService;
	@Autowired
	AppointmentService appointmentService;
	@Autowired
	MailSenderService mailSenderService;

	@PostMapping("/Drregistered")
	public ModelAndView Doctregistered(String drName, String clName, String clAdd, String drSpec, int drExperience, int drFees, String drGmail,
			String drMobile, String drUsername, String drPassword) {
		try {
			// encrypt pass using hashPassword() method
			ActionController actionController = new ActionController();
			String encrpPassUser = actionController.hashPassword(drPassword);
			
			
			ModelAndView mv = new ModelAndView("DrLogReg");
			Doctors doctor = new Doctors(drName, clName, clAdd, drSpec, drExperience, drFees, drGmail, drMobile, drUsername, encrpPassUser,
					false);
			
			doctorService.createDr(doctor);

			mailSenderService.sendSimpleEmail(drGmail, "Dear Dr. " + drName+"," +"\n"+"\n"
					+ "Congratulations! You have been registered successfully on ParentalHelp!! " +"\n" +"\n" +"Your login credentials are as follows:" +"\n"
					+ "UserName : " + drName + "\n" +  "Password : " + drPassword + "\n" +"\n" +"\n" + "Best regards," +"\n"+ "ParentalHelp Team." +"\n"+"\n"
							+ "Note: This is a system generated e-mail, please do not reply to it.","Registration Successful!");
			
			mv.addObject("patReg", 1);
			return mv;
		} catch (Exception e) {

			ModelAndView mv = new ModelAndView("DrLogReg");
			mv.addObject("patReg", 0);
			return mv;
		}
	}

	@PostMapping("/Authentdrlogin")
	public ModelAndView AuthenticateDoctor(String drUsername, String drPassword,HttpServletRequest req,
			HttpServletRequest res) {
		try {
			Doctors doctor = doctorService.AuthenticateDoctor(drUsername);

			if (doctor != null) {
				ActionController actionController = new ActionController();
				boolean passresult = actionController.checkPass(drPassword, doctor.getDrPassword());
				if (passresult) {
					ModelAndView mv = new ModelAndView("doctorProfile");
					mv.addObject("doctor", doctor);
					HttpSession httpSession = req.getSession();
					httpSession.setAttribute("my-auth", 1);
					mv.addObject("drLogFail", 1);
					return mv;
				}
			}

			ModelAndView mv = new ModelAndView("DrLogReg");
			mv.addObject("drLogFail", 0);
			return mv;
		} catch (Exception e) {
			ModelAndView mv = new ModelAndView("DrLogReg");
			mv.addObject("drLogFail", 0);
			HttpSession session = req.getSession();
			session.setAttribute("my-auth", 0);
			return mv;
		}
	}

	// doctor
	@GetMapping("/Appointuserlist")
	public ModelAndView Appointpatientlist(String drid) {
		boolean aptStatus = true;
		ModelAndView mv = new ModelAndView("Appointment-list");
		Doctors doctor = doctorService.getDoctor(drid);
		List<Appointment> appointments = appointmentService.Appointpatientlist(drid, aptStatus);
		mv.addObject("doctor", doctor);
		mv.addObject("appointments", appointments);
		mv.addObject("appointPatientlist", 1);

		List<User> userList = userService.getAllPatient();
		mv.addObject("userList", userList);
		return mv;
	}

	// doctor close
	@GetMapping("/AptCloseByDr")
	public ModelAndView AptCloseByDr(String ptid, String drid) {
		boolean aptStatus = true;
		User user = userService.getSingleUser(ptid);
		Doctors doctor = doctorService.getDoctor(drid);
		appointmentService.aptCancel(ptid, drid);
		ModelAndView mv = new ModelAndView("Appointment-list");
		List<Appointment> appointments = appointmentService.Appointpatientlist(drid, aptStatus);
		mv.addObject("doctor", doctor);
		mv.addObject("user", user);
		mv.addObject("c", 1);
		System.out.println("appointment cancelled");
		mv.addObject("appointments", appointments);
		

		String Doc_mail=doctor.getDrEmail();
        String email=user.getPtGmail();
        String name=user.getPtName();
        String doc_name=doctor.getDrName();
	
		
		mailSenderService.sendSimpleEmail(email, "Dear " + name +"," +"\n"+"\n"+
				"\n"+"Your appointment has been cancelled by Dr. "+ doc_name+"."+ "\n" +"\n"  + 
				"Please contact Dr. "+ doc_name + " if any questions and keep me informed if there should be any changes."+ "\n" +"\n" +"\n" + "Best regards," +"\n"+ "ParentalHelp Team."+
				"\n" +"\n" +
				"Note: This is a system generated e-mail, please do not reply to it.","Appointment Cancelled!");
		
		mailSenderService.sendSimpleEmail(Doc_mail, "Dear Dr. " + doc_name +"," +"\n"+"\n"+
				"\n"+"Your appointment has been cancelled with "+name+"."+ "\n"  + 
				"Please contact  "+name+ " if any questions and keep me informed if there should be any changes."+ "\n" +"\n" +"\n" + "Best regards," +"\n"+ "ParentalHelp Team."+
				"\n" +"\n" +
				"Note: This is a system generated e-mail, please do not reply to it.","Appointment Cancelled!");
		
		
	
		return mv;
	}

	@GetMapping("/doctProfile")
	public ModelAndView doctProfile(String drid) {
		Doctors doctor = doctorService.getDoctor(drid);

		ModelAndView mv = new ModelAndView("doctorProfile");
		mv.addObject("doctor", doctor);
		mv.addObject("doctProfile", 1);
		return mv;

	}

	// update dr status
	@GetMapping("/editDrStatus")
	public ModelAndView editDrStatus(String drid) {
		doctorService.editDrStatus(drid);
		ModelAndView mv = new ModelAndView("doctorProfile");
		Doctors doctor = doctorService.getDoctor(drid);
		mv.addObject("doctor", doctor);
		mv.addObject("doctProfile", 1);
		return mv;
	}

	// provide option to doctor to edit prof
	@GetMapping("/editDrOpt")
	public ModelAndView editDrOpt(String drid) {
		ModelAndView mv = new ModelAndView("updateDoctorProfile");
		Doctors doctor = doctorService.getDoctor(drid);
		mv.addObject("doctor", doctor);
		mv.addObject("editDrProf", 1);
		mv.addObject("drprofile", 2);
		return mv;
	}

	@GetMapping("/updateDr")
	public ModelAndView updateDr(String id, String drName, String drSpec, int drExperience, int drFees, String drEmail, String drMobile,
			String drUsername, String drPassword, String hspId) {
		ActionController actionController = new ActionController();
		String encrpPassUser = actionController.hashPassword(drPassword);

		ModelAndView mv = new ModelAndView("doctorProfile");
		Doctors doctor = doctorService.updateDr(id, drName, drSpec, drExperience, drFees, drEmail, drMobile, drUsername, encrpPassUser,
				hspId);
		mv.addObject("doctor", doctor);
		mv.addObject("doctProfile", 1);

		System.out.println("doctor updated successfully in admin dao");
		return mv;
	}

	// doctor forgot password
	@PostMapping("/doctorforgotPass")
	public ModelAndView forgotPassdoc(String drUsername, String drPassword, String drEmail) {
		Doctors doctor = doctorService.AuthentDrUnameGmail(drUsername, drEmail);
		if (doctor != null) {
			ModelAndView mv = new ModelAndView("forgotpassword_doctor");
			ActionController actionController = new ActionController();
			String encrpPassUser = actionController.hashPassword(drPassword);
			doctor.setDrPassword(encrpPassUser);
			doctorService.createDr(doctor);
			
			
			mailSenderService.sendSimpleEmail(drEmail, "Dear " + drUsername +"," +"\n"+"\n"
					+ "Congratulations! Your password has been updated sucessful on ParentalHelp!! " +"\n" +"\n" +"Your new login credentials are as follows:" +"\n"
					+ "UserName : " + drUsername  + "\n" +  "Password : " + drPassword + "\n" +"\n" +"\n" + "Best regards," +"\n"+ "ParentalHelp Team." +"\n"+"\n"
							+ "Note: This is a system generated e-mail, please do not reply to it.","Password Upadated!");
			
			mv.addObject("ptPassFail", 1);
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("forgotpassword_user");
			mv.addObject("ptPassFail", 0);
			return mv;
		}

	}

}