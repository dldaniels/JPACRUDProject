package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.DinosaurDAO;
import com.skilldistillery.jpacrud.entities.Dinosaur;

@Controller
public class DinosaurController {

	@Autowired
	private DinosaurDAO dinoDao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(path = "getList.do", method = RequestMethod.GET)
	public String dinosaurList(Model model) {
		List<Dinosaur> dinosaurList = dinoDao.findAll();
		model.addAttribute("dinosaurs", dinosaurList);
		return "dinosaur/dinosaurList";
	}

	@RequestMapping(path = "getDinosaur.do")
	public String showDinosaur(Integer fid, Model model) {
		Dinosaur dinosaur = dinoDao.findByID(fid);
		model.addAttribute("dinosaur", dinosaur);
		return "dinosaur/show";
	}

	@RequestMapping(path = "createDinosaurForm.do", method = RequestMethod.GET)
	public String createDinosaurForm(Dinosaur dinosaur) {
		return "dinosaur/addDino";
	}

	@RequestMapping(path = "deleteDinosaur.do", method = RequestMethod.GET)
	public ModelAndView deleteDinosaur(@RequestParam("dinosaurs") int fid, Model model) {
		ModelAndView mv = new ModelAndView();
		boolean result = dinoDao.deleteDinosaur(fid);
		mv.addObject(result);
		mv.setViewName("index");
		return mv;

	}

	@RequestMapping(path = "create.do")
	public String createDinosaur(Dinosaur dinosaur, Model model) {
		model.addAttribute("dinosaur", dinoDao.create(dinosaur));
		return "dinosaur/show";
	}

	@RequestMapping(path = "editDinosaur.do")
	public String editDinosaur(Dinosaur dinosaur, Integer id, Model model) {
		model.addAttribute("dinosaur", dinoDao.findByID(id));
		return "dinosaur/update";
	}

	@RequestMapping(path = "updateDinosaur.do")
	public String updateDinosaur(Integer id, Model model, Dinosaur dinosaur) {
		dinoDao.update(id, dinosaur);
		model.addAttribute("dinosaur", dinosaur);
		return "dinosaur/show";

	}
	
	@RequestMapping(path = "getHerbivore.do", method = RequestMethod.GET)
	public String herbivoreList(Model model) {
		List<Dinosaur> herbivoreList = dinoDao.findHerbivore("herbivore");
		model.addAttribute("dinosaurs", herbivoreList);
		return "dinosaur/dinosaurList";
	}
	@RequestMapping(path = "getCarnivore.do", method = RequestMethod.GET)
	public String carnivoreList(Model model) {
		List<Dinosaur> carnivoreList = dinoDao.findCarnivore("carnivore");
		model.addAttribute("dinosaurs", carnivoreList);
		return "dinosaur/dinosaurList";
	}
	
	@RequestMapping(path = "getSearch.do", method = RequestMethod.GET)
	public String dinosaurSearch(String keyword, Model model) {
		List<Dinosaur> dinosaurList = dinoDao.findByKeyword(keyword);
		model.addAttribute("dinosaurs", dinosaurList);
		return "dinosaur/dinosaurList";
	}
}
