package com.skilldistillery.superproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.superproject.data.StateDAO;

@Controller
public class StateController {

	@Autowired
	private StateDAO stateDAO;
	
	@RequestMapping(path = "/")
	public String index() {
		//model.addAttribute("updateState", stateDAO.updateState(id, state));
		System.out.println("Hegsg trhtrh htsgergerergeeees                ergregllo");
		return "WEB-INF/index.jsp";
	}
	
}
