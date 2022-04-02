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

import in.cdac.project.ServiceImlemantation.VaccinationServiceImplemantation;
import in.cdac.project.entity.Vaccination;
import in.cdac.project.service.VaccinationService;
@Controller
public class VaccinationActionController {

	@Autowired
	VaccinationServiceImplemantation vaccinationServiceImplemantation;
	@Autowired
	VaccinationService vaccinationService;

	// Vaccination Actions

	@RequestMapping(value = "/vaccinationdetailss", method = RequestMethod.GET)
	public ModelAndView viewbVaccinationlist() {
		ModelAndView model = new ModelAndView("vacination_details");
		List<Vaccination> articleList = vaccinationService.getAllVaccinationDetails();
		model.addObject("articleList", articleList);
		return model;
	}

	// searchbar list
	@RequestMapping("/vaccinationdetails")
	public String vaccinationdetailss(Model model, @Param("keyword") String keyword) {
		List<Vaccination> articleList = vaccinationServiceImplemantation.listAll(keyword);
		model.addAttribute("articleList", articleList);
		model.addAttribute("keyword", keyword);

		return "vacination_details";
	}

	@RequestMapping(value = "/vaccinationlist", method = RequestMethod.GET)
	public ModelAndView Vaccinationlist() {
		ModelAndView model = new ModelAndView("vacination_list");
		List<Vaccination> articleList = vaccinationService.getAllVaccinationDetails();
		model.addObject("articleList", articleList);
		return model;
	}

	@RequestMapping(value = "/savevaccination", method = RequestMethod.GET)
	public ModelAndView saveVaccinationDetails(@ModelAttribute("articleForm") Vaccination vaccination) {
		vaccinationService.saveOrUpdateVaccinationDetails(vaccination);
		return new ModelAndView("redirect:/vaccinationlist");
	}

	@RequestMapping(value = "/addvaccination", method = RequestMethod.GET)
	public ModelAndView addVaccinationDetails() {
		ModelAndView model = new ModelAndView();
		Vaccination vaccination = new Vaccination();
		model.addObject("articleForm", vaccination);
		model.setViewName("vaccination_form");
		return model;
	}

	@RequestMapping(value = "/deletevaccination/{id}", method = RequestMethod.GET)
	public ModelAndView deleteVaccinationDetails(@PathVariable("id") int id) {
		vaccinationService.deleteVaccinationDetails(id);
		return new ModelAndView("redirect:/vaccinationlist");
	}

	@RequestMapping(value = "/updatevaccination/{id}", method = RequestMethod.GET)
	public ModelAndView editVaccinationDetails(@PathVariable int id) {
		ModelAndView model = new ModelAndView();
		Vaccination vaccination = vaccinationService.getVaccinationDetailsById(id);
		model.addObject("articleForm", vaccination);
		model.setViewName("UpdateVaccination");
		return model;
	}

}
