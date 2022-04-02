package in.cdac.project.Action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import in.cdac.project.ServiceImlemantation.BabyNameServiceImplimantation;
import in.cdac.project.entity.BabyName;
import in.cdac.project.service.BabyNameService;
@Controller
public class BabyNameActionController {
	
	@Autowired
	BabyNameServiceImplimantation babyNameServicesImplimantation;
	@Autowired
	BabyNameService babyNameService;

	// BabyNAme

	// searchbar list
	@RequestMapping("/babynamedetails")
	public String babynamedetails(Model model, @Param("keyword") String keyword) {
		List<BabyName> babynames = babyNameServicesImplimantation.listAll(keyword);
		model.addAttribute("babynames", babynames);
		model.addAttribute("keyword", keyword);
		return "babyname_details";
	}

	@RequestMapping(value = "/babynamelist", method = RequestMethod.GET)
	public ModelAndView babynamelist() {
		ModelAndView model = new ModelAndView("babyname_list");
		List<BabyName> babyname = babyNameService.getAllBabyName();
		model.addObject("babyname", babyname);
		return model;
	}

	@RequestMapping(value = "/savebabyname", method = RequestMethod.GET)
	public ModelAndView savebabyname(@ModelAttribute("articleForm") BabyName babyName) {
		babyNameService.saveOrUpdateBabyName(babyName);
		return new ModelAndView("redirect:/babynamelist");
	}

	@RequestMapping(value = "/addbabyname", method = RequestMethod.GET)
	public ModelAndView addbabyname() {
		ModelAndView model = new ModelAndView();
		BabyName babyname = new BabyName();
		model.addObject("babyname", babyname);
		model.setViewName("babyname_form");
		return model;
	}

	@RequestMapping(value = "/deletebabyname/{id}", method = RequestMethod.GET)
	public ModelAndView deletebabyname(@PathVariable("id") int id) {
		babyNameService.deleteBabyName(id);
		return new ModelAndView("redirect:/babynamelist");
	}

	@RequestMapping(value = "/updatebabyname/{id}", method = RequestMethod.GET)
	public ModelAndView updatebabyname(@PathVariable int id) {
		ModelAndView model = new ModelAndView();
		BabyName babyname = babyNameService.getBabyNameId(id);
		model.addObject("babyname", babyname);
		model.setViewName("updatebabyname_form");
		return model;
	}

}
