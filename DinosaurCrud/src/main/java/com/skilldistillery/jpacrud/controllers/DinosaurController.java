package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.DinosaurDAO;
import com.skilldistillery.jpacrud.entities.Dinosaur;

@Controller
public class DinosaurController {

	@Autowired
	private DinosaurDAO dinoDao;

	@RequestMapping(path = "/")
	public String index(Model model) {
		List<Dinosaur>dinosaurList = dinoDao.findAll();
		model.addAttribute("dinosaurs", dinosaurList);
		return "index";
	}

	@RequestMapping(path = "getDinosaur.do")
	public String showDinosaur(Integer fid, Model model) {
		Dinosaur dinosaur = dinoDao.findByID(fid);
		model.addAttribute("dinosaur", dinosaur);
		return "dinosaur/show";
	}
}
