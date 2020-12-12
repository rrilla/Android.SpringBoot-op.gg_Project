package com.example.opggProject.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.python.core.PyArray;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyList;
import org.python.core.PyObject;
import org.python.core.PyString;
import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.opggProject.domain.User;
import com.example.opggProject.domain.UserRepository;
import com.nimbusds.oauth2.sdk.Response;

import lombok.extern.java.Log;


@Log
@Controller
public class UserController {
	private PythonInterpreter intPre;
	
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	String referer;
	
	@GetMapping("/success")
	@ResponseBody
	public String goback() {
		System.out.println(referer);
		
		return "<script>location.href='" + referer + "'</script>";
	}
	
	//@GetMapping("/success")
	public String goback2(HttpServletRequest request) {
		request.getHeader("sdlfkdsf");
		return "경로";
	}
	
	@GetMapping({"", "/", "/main"})
	public String test() {
		return "main";
	}
	
	@PostMapping("/join")
	public  String join(User user) {
		user.setRole("ROLE_USER");
		String rawPassword = user.getPassword();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
		System.out.println(user);
		return "redirect:/user/loginForm";
	}
	
	@GetMapping("/loginForm")
	public String loginForm(HttpServletRequest request) {
		referer = request.getHeader("referer");
		return "user/loginForm";
	}
	
	@GetMapping("/signUpForm") 
	public String signUpForm() {
		return "user/signUpForm";
	}
	
	@GetMapping("/multi")
	public String multiSearchForm() {
		
		return "multiSearch/multiSearchForm";
	}
	
	@GetMapping("/summoner")
	public String summoner() {
		return "record/summoner";
	}
	
	@GetMapping("/ladder")
	public String ladder() {
		return "ranking/ladder";
	}
}
