package com.example.opggProject.controller.app;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.opggProject.config.auth.PrincipalDetails;
import com.example.opggProject.dto.app.JoinDto;
import com.example.opggProject.service.app.AppService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/app")
public class AppController {
	
	private final AppService appService;
	
	@PostMapping("/login")
	public ResponseEntity<?> login(@RequestBody JoinDto joinDto ) {
		System.out.println("왓음");
		return appService.login(joinDto);
	}
	
	@PostMapping("/test")
	public String test(@AuthenticationPrincipal PrincipalDetails princiql) {
		if(princiql == null) {
			System.out.println("값ㄴㄴㄴ");
		}else {
			System.out.println(princiql.getUsername());
		}
		return "ok";
	}
	

}
