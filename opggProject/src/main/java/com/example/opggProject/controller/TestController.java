package com.example.opggProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
	
	@GetMapping({"", "/", "/main"})
	public String test() {
		return "main";
	}
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@GetMapping("/signUpForm") 
	public String signUpForm() {
		return "user/signUpForm";
	}
	
	@GetMapping("/board") 
	public String board() {
		return "board";
	}
	
	@GetMapping("/multi")
	public String multiSearchForm() {
		return "multiSearch/multiSearchForm";
	}
	
	@GetMapping("/summoner")
	public String summoner() {
		return "record/summoner";
	}
}
