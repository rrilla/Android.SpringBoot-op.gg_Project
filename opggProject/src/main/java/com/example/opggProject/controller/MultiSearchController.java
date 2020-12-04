package com.example.opggProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MultiSearchController {
	@GetMapping("/multiSearchForm")
	public String multiSearchForm() {
		return "multiSearchForm";
	}
	
	

}
