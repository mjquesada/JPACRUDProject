package com.skilldistillery.superproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.superproject.data.StateDAO;
import com.skilldistillery.superproject.entities.State;

@Controller
public class StateController {

	@Autowired
	private StateDAO stateDAO;
	
//	@RequestMapping(path = "/")
//	public String index() {
//		//model.addAttribute("updateState", stateDAO.updateState(id, state));
//		System.out.println("Hegsg trhtrh htsgergerergeeees                ergregllo");
//		return "index";
//	}
	
	@RequestMapping(path = "getState.do", method = RequestMethod.GET)
	public ModelAndView getStateById(@RequestParam("sid") int sid) {
		ModelAndView mv = new ModelAndView();
		System.out.println(sid);
		State state = stateDAO.findById(sid);
		
		mv.addObject("state", state);
		mv.setViewName("show");
		System.out.println("efj3oit934ujfdakle w------------2 3r 32r9430u4");
		return mv;
	}
	
//	public ModelAndView getAllStates() {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("")
//		return mv;
//	}
	
	@RequestMapping(path="getAllStates.do")
	public String getAllStates(Model model) {
		model.addAttribute("stateList", stateDAO.returnAll());
		return "index";
	}
	
	
	
	
//	@RequestMapping(path = "updateState.do", method = RequestMethod.GET)
//	public ModelAndView updateState(@RequestParam("updateS") int id) {
//		ModelAndView mv = new ModelAndView();
//		
//		State state = stateDAO.updateState(id, state);
//		
//		
//		return mv;
//	}
	
}
