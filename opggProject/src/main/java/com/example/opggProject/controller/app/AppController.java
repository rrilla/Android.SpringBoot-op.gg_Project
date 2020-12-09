package com.example.opggProject.controller.app;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.opggProject.config.auth.PrincipalDetails;
import com.example.opggProject.dto.app.JoinDto;
import com.example.opggProject.dto.app.LoginDto;
import com.example.opggProject.service.app.AppService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class AppController {
	
	private final AppService appService;
	
	@PostMapping("/app/login")
	public ResponseEntity<?> login(
			@RequestBody LoginDto loginDto,
            HttpSession session,
            HttpServletResponse res) {
		
		return appService.login(loginDto, session, res);
		
	}
	
	@PostMapping("/app/loginGoogle")
	public ResponseEntity<?> loginGoogle(
			@RequestBody JoinDto joinDto,
			HttpSession session,
	        HttpServletResponse res) {
		
		return appService.loginGoogle(joinDto, session, res);
			
	}
	
	@PostMapping("/app/test")
	public String test(@AuthenticationPrincipal PrincipalDetails princiql) {
		if(princiql == null) {
			System.out.println("값ㄴㄴㄴ");
		}else {
			System.out.println(princiql.getUsername());
		}
		return "ok";
	}
	
	//권한테스트
	@PostMapping("user/test")
	public String test() {
		return "ok";
	}
	

}
