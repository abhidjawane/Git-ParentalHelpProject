package in.cdac.project.Action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import in.cdac.project.ServiceImlemantation.BebySitterImplemantation;
import in.cdac.project.ServiceImlemantation.UserService;
import in.cdac.project.entity.Babysitter;
import in.cdac.project.entity.User;
import in.cdac.project.entity.Vaccination;
import in.cdac.project.service.BabySitterService;
@Controller
public class BabySitterActionController {

	@Autowired
	BabySitterService babysitterService;
	@Autowired
	BebySitterImplemantation babyNameServiceImplimantation;
	@Autowired
	UserService userService;
	
	
	// BabySitter Details

	@RequestMapping("/babysitters")
	public ModelAndView babysitter() {

		return new ModelAndView("babysitter_list");

	}

//	@RequestMapping(value = "/babysiterdetailss", method = RequestMethod.GET)
//	public ModelAndView viewbBabysitterlist() {
//		ModelAndView model = new ModelAndView("babysitter_details");
//		List<Babysitter> articleList = babysitterService.getAllBebySitters();
//		model.addObject("articleList", articleList);
//
//		return model;
//	}
	

	// searchbar list
//	@RequestMapping("/babysiterdetails")
//	public String viewHomePage(Model model, @Param("keyword") String keyword) {
//		List<Babysitter> Poollist = babyNameServiceImplimantation.listAll(keyword);
//		model.addAttribute("Poollist", Poollist);
//		model.addAttribute("keyword", keyword);
//
//		return "babysitter_details";
//	}
	
	
	
	@GetMapping("/babysiterdetails")
	public ModelAndView vaccinationdetailss(String ptid) {
		User user = userService.getSingleUser(ptid);
		List<Babysitter> Poollist = babyNameServiceImplimantation.listAll(ptid);
		ModelAndView mv = new ModelAndView("babysitter_details");
		mv.addObject("user", user);
		mv.addObject("Poollist", Poollist);
		return mv;
	}
	
	
	
	
	

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("babysitter_list");
		List<Babysitter> articleList = babysitterService.getAllBebySitters();
		model.addObject("articleList", articleList);

		return model;
	}

	@RequestMapping(value = "/savebabysitter", method = RequestMethod.GET)
	public ModelAndView save(@ModelAttribute("articleForm") Babysitter article) {
		babysitterService.saveOrUpdate(article);
		return new ModelAndView("redirect:/list");

	}

	@RequestMapping(value = "/addbabysitter", method = RequestMethod.GET)
	public ModelAndView addArticle() {
		ModelAndView model = new ModelAndView();

		Babysitter article = new Babysitter();
		model.addObject("articleForm", article);
		model.setViewName("babysitter_form");

		return model;
	}

	@RequestMapping(value = "/deletebabysitter/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		babysitterService.delete(id);

		return new ModelAndView("redirect:/list");
	}

	@RequestMapping(value = "/updatebebysitter/{id}", method = RequestMethod.GET)
	public ModelAndView editArticle(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		Babysitter article = babysitterService.getUserById(id);
		model.addObject("articleForm", article);
		model.setViewName("UpdateBabySitter");

		return model;
	}

}
