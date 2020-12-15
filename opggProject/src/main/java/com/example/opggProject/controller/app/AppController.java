package com.example.opggProject.controller.app;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.opggProject.config.auth.PrincipalDetails;
import com.example.opggProject.domain.user.User;
import com.example.opggProject.dto.app.JoinDto;
import com.example.opggProject.dto.app.LoginDto;
import com.example.opggProject.service.app.AppService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class AppController {
	
	private final AppService appService;
	
	@PostMapping("app/signUp")
	public ResponseEntity<?> signUp(
			@RequestBody User user) {
		
		return appService.signUp(user);
	}
	
	@PostMapping("app/login")
	public ResponseEntity<?> login(
			@RequestBody LoginDto loginDto,
            HttpSession session,
            HttpServletResponse res) {
		
		return appService.login(loginDto, session, res);
	}
	
	@PostMapping("app/loginGoogle")
	public ResponseEntity<?> loginGoogle(
			@RequestBody JoinDto joinDto,
			HttpSession session,
	        HttpServletResponse res) {
		
		return appService.loginGoogle(joinDto, session, res);
	}
	
	@PostMapping("app/boardList")
	public ResponseEntity<?> boardList() {
		
		return appService.boardList();
	}
	
	//소환사 이름받고 소환사 상세정보 리턴
	//아디 없을시 no리턴
	@PostMapping("app/detailSummoner")
	public ResponseEntity<?> detailSummoner(
			@RequestParam("summoner") String summoner) {
		
		System.out.println(summoner);
		return new ResponseEntity<String>("ok", HttpStatus.OK);
		//return new ResponseEntity<String>("no", HttpStatus.OK);
	}
	
	//챔프목록 리스트
	@PostMapping("app/championList")
	public ResponseEntity<?> championList(
			@RequestParam("orderBy") String orderBy) {
		return appService.championList(orderBy);
		//return new ResponseEntity<String>("ok", HttpStatus.OK);
		//return new ResponseEntity<String>("no", HttpStatus.OK);
	}
		
	//ranking 데이터 조회 - 랭킹
	@PostMapping("app/rakingR")
	public ResponseEntity<?> rakingR(
			@PageableDefault(size = 200, sort = "rno", direction = Direction.ASC ) Pageable pageable) {
		return appService.rankList(pageable);
		//return new ResponseEntity<String>("no", HttpStatus.OK);
	}
	
	//ranking 데이터 조회 - 레벨
	@PostMapping("app/rakingL")
	public ResponseEntity<?> rakingL(
			@PageableDefault(size = 200, sort = "level", direction = Direction.DESC ) Pageable pageable) {
		return appService.rankList(pageable);
		//return new ResponseEntity<String>("no", HttpStatus.OK);
	}
	
	
	
	
	
	
	
	
	//메인 - 소환사 요약 
	//소환사 이름받고 소환사 요약정보 리턴
	//@PostMapping("app/summarySummoner")
	public ResponseEntity<?> summarySummoner(
			@RequestParam("summoner") String summoner) {
		
		System.out.println(summoner);
		return new ResponseEntity<String>("ok", HttpStatus.OK);
		//return new ResponseEntity<String>("no", HttpStatus.OK);
	}
	
	//소환사 이름받고 존재 유무 리턴
	@PostMapping("app/checkSummoner")
	public ResponseEntity<?> checkSummoner(
			@RequestParam("summoner") String summoner) {
		
		System.out.println(summoner);
		return new ResponseEntity<String>("ok", HttpStatus.OK);
		//return new ResponseEntity<String>("no", HttpStatus.OK);
	}
	
	//즐겨찾기 - 소환사 이름 리스트로 받고 요약정보 리턴
	@PostMapping("app/bookmarkSummoner")
	public ResponseEntity<?> bookmarkSummoner(
			@RequestParam("summoner") String summoner) {
		
		System.out.println(summoner);
		return new ResponseEntity<String>("ok", HttpStatus.OK);
		//return new ResponseEntity<String>("no", HttpStatus.OK);
	}
	
	
	@GetMapping("app/test")
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
