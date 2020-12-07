package com.example.opggProject.controller;

import java.util.ArrayList;
import java.util.List;

import org.python.core.PyArray;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyList;
import org.python.core.PyObject;
import org.python.core.PyString;
import org.python.util.PythonInterpreter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.java.Log;


@Log
@Controller
public class TestController {
	private PythonInterpreter intPre;
	

	


	@GetMapping("/test")
	public String getTest(Model model) {
		intPre = new PythonInterpreter();
		intPre.execfile("src/main/clt/test.py");
		PyFunction pyFunction = (PyFunction) intPre.get("testFunc",PyFunction.class);
		
		
		PyObject pyobj = pyFunction.__call__();
		
		model.addAttribute("pytestResult", pyobj.toString());
		log.info(pyobj.toString());
		return "test";
	}
	
	@GetMapping("/test2")
	public String getTest2(Model model) {
		intPre = new PythonInterpreter();
		intPre.execfile("src/main/clt/multiSearch.py");
		PyFunction pyFunction = (PyFunction) intPre.get("multiSearch",PyFunction.class);
		
		String name = "ZED99";
		PyObject pyobj = pyFunction.__call__(new PyString(name));
//		ArrayList<String> test = pyobj;
		model.addAttribute("pytestResult", pyobj.toString());
		log.info(pyobj.toString());
		return "test2";
	}

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
