package com.skilldistillery.superproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}

	// Finds a state by the id
	@RequestMapping(path = "getState.do", method = RequestMethod.GET)
	public ModelAndView getStateById(@RequestParam("sid") int sid) {
		ModelAndView mv = new ModelAndView();

		State state = stateDAO.findById(sid);

		mv.addObject("state", state);
		mv.setViewName("show");
		return mv;
	}

	// Button on home page that lists all states in db
	@RequestMapping(path = "getAllStates.do", method = RequestMethod.GET)
	public String getAllStates(Model model) {
		model.addAttribute("stateList", stateDAO.returnAll());
		return "listall";
	}

	// Grabs the state that I want to update
	@RequestMapping(path = "getStateToUpdate.do")
	public String getStateToUpdate(Model model, int updateId) {
		model.addAttribute("state", stateDAO.findById(updateId));
		return "update";
	}

	// Updates that state from the find by ID page
	@RequestMapping(path = "updateState.do", method = RequestMethod.POST)
	public ModelAndView updateState(@ModelAttribute("state") State state, @RequestParam("updateS") int id) {
		ModelAndView mv = new ModelAndView();
		State updatedState = stateDAO.updateState(id, state);
		mv.addObject(updatedState);
		mv.setViewName("update");

		return mv;
	}

	// Creates a new object that I pass to create method/controller
	@RequestMapping(path = "createObjectForController.do", method = RequestMethod.POST)
	public String createObjectForController(Model model) {
		State state = new State();
		model.addAttribute("state", state);
		return "create";
	}

	// Creates a new state from the home page
	@RequestMapping(path = "createState.do", method = RequestMethod.POST)
	public ModelAndView createState(@ModelAttribute("state") State state) {
		System.out.println("*************" + state + "*************");
		ModelAndView mv = new ModelAndView();
		State createState = stateDAO.createState(state);
		System.out.println(createState);
		// createState.getId();
		mv.addObject("state", createState);
		mv.setViewName("show");

		return mv;
	}

	// Destroying a state
	@RequestMapping(path = "destroyState.do", method = RequestMethod.GET)
	public ModelAndView destroyState(Model model, int destroyId, State state) {
		ModelAndView mv = new ModelAndView();
		
		State deletedState = stateDAO.destroyState(state, destroyId);
		mv.addObject("Deleted State", deletedState);
		mv.setViewName("index");
		return mv;
	}

}
