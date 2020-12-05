package com.example.opggProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
	
	
	@GetMapping("/test")
	public @ResponseBody String test() {
		return "준슥";
	}
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
}
