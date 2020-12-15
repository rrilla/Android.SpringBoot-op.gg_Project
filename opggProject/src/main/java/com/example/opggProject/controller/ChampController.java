package com.example.opggProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChampController {
	
	@GetMapping("/champ")
	public String champForm() {
		
		return "/champ/statistics";
	}
}
