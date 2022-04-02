package in.cdac.project.Action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import in.cdac.project.ServiceImlemantation.MailSenderService;
import in.cdac.project.entity.Doctors;
import in.cdac.project.entity.Inquiry;
import in.cdac.project.service.InquiryService;

@Controller
public class InquiryActionController {

	@Autowired
	InquiryService inquiryService;
	@Autowired
	MailSenderService mailSenderService;

	// InquiryFormAction

	@RequestMapping(value = "/inquirylist", method = RequestMethod.GET)
	public ModelAndView Inquirylist() {
		ModelAndView model = new ModelAndView("Inquiry_list");
		List<Inquiry> articleList = inquiryService.getAllInquiry();
		model.addObject("articleList", articleList);
		return model;
	}

	/*
	 * @RequestMapping(value = "/saveinquiry", method = RequestMethod.POST) public
	 * ModelAndView saveInquiryDetails(@ModelAttribute("articleForm") Inquiry
	 * inquiry) { Inquiry in = new Inquiry(); String users_name =
	 * in.getUsers_name(); String email = in.getEmail(); String mobile =
	 * in.getMobile(); String subject = in.getSubject(); String detail_Description =
	 * in.getDetail_Description(); inquiryService.saveOrUpdateInquiry(inquiry);
	 * mailSenderService.sendSimpleEmail(email, "" + detail_Description +
	 * " Thanks & regards " + users_name +"Mobile: "+mobile,subject);
	 * 
	 * return new ModelAndView("redirect:/addinquiry"); }
	 */

	
	@PostMapping("/saveinquiry")
	public ModelAndView saveInquiryDetails(String users_name, String email, String mobile, String subject, String detail_Description) {
		
			
			Inquiry inquiry = new Inquiry(users_name, email,  mobile, subject, detail_Description);
			inquiryService.saveOrUpdateInquiry(inquiry);
			mailSenderService.sendSimpleEmail(email, "" + detail_Description + "\n" +"\n" + "Thanks & regards "+ "\n" + users_name +"\n" +"Mobile: "+mobile,subject);
	
			return new ModelAndView("redirect:/addinquiry");
		
	}
	
	@RequestMapping(value = "/addinquiry", method = RequestMethod.GET)
	public ModelAndView addInquiryDetails() {
		ModelAndView model = new ModelAndView();
		Inquiry inquiry = new Inquiry();
		model.addObject("articleForm", inquiry);
		model.setViewName("Inquiry_form");
		return model;
	}

	@RequestMapping(value = "/deleteinquiry/{id}", method = RequestMethod.GET)
	public ModelAndView deleteInquiryDetails(@PathVariable("id") int id) {
		inquiryService.deleteInquiry(id);
		return new ModelAndView("redirect:/inquirylist");
	}

	@RequestMapping(value = "/updateinquiry/{id}", method = RequestMethod.GET)
	public ModelAndView editInquiryDetails(@PathVariable int id) {
		ModelAndView model = new ModelAndView();
		Inquiry inquiry = inquiryService.getInquiryById(id);
		model.addObject("articleForm", inquiry);
		model.setViewName("Inquiry_form");
		return model;
	}

}
