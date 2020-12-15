package com.example.opggProject.service.app;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.board.Board;
import com.example.opggProject.domain.board.BoardRepository;
import com.example.opggProject.domain.champion.Champion;
import com.example.opggProject.domain.champion.ChampionRepository;
import com.example.opggProject.domain.rank.RankData;
import com.example.opggProject.domain.rank.RankRepository;
import com.example.opggProject.domain.user.User;
import com.example.opggProject.domain.user.UserRepository;
import com.example.opggProject.dto.app.ChampionDto;
import com.example.opggProject.dto.app.JoinDto;
import com.example.opggProject.dto.app.LoginDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AppService {
	
	private final UserRepository userRepository;
	private final BoardRepository boardRepository;
	private final RankRepository rankRepository;
	private final ChampionRepository championRepository;
	private final BCryptPasswordEncoder bCryptPasswordEncoder;
	private final AuthenticationManager authenticationManager;
	
	private String key = "1029";
	
	public ResponseEntity<?> signUp(User user) {
		
		try {
			String username = user.getUsername();
			String nickname = user.getNickname();
			if(userRepository.findByUsernameOrEmail(username, username) != null) {
				return new ResponseEntity<String>("이미 가입 했거나, 인증된 이메일 입니다.",HttpStatus.CREATED);
			}else if(userRepository.findByNickname(nickname) != null) {
				return new ResponseEntity<String>("중복된 닉네임 입니다.",HttpStatus.CREATED);
			}
			
			String password = bCryptPasswordEncoder.encode(user.getPassword());
			String role = "ROLE_USER";
			String provider = "general";
			user.setPassword(password);
			user.setRole(role);
			user.setProvider(provider);
			userRepository.save(user);
			return new ResponseEntity<String>("ok",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>("서버 에러",HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	public ResponseEntity<?> loginGoogle(
			JoinDto joinDto,
			HttpSession session,
            HttpServletResponse res) {
		
		String username = joinDto.getProviderId() + "_" + joinDto.getUid();
		
		if(userRepository.findByUsername(username) == null) {
			try {
				
				String provider = joinDto.getProviderId();
				String providerId = joinDto.getUid();
				String email = joinDto.getEmail();
				String password = bCryptPasswordEncoder.encode(key);
				String role = "ROLE_USER";
				String nickname = joinDto.getName();
				
				User userEntity = User.builder()
						.username(username)
						.password(password)
						.email(email)
						.role(role)
						.nickname(nickname)
						.provider(provider)
						.providerId(providerId)
						.build();
				userRepository.save(userEntity);
				
			}catch(Exception e) {
				e.printStackTrace();
				return new ResponseEntity<String>("서버 시큐리티 회원가입 실패", HttpStatus.OK); 
			}
		}
		
		LoginDto loginDto = LoginDto.builder()
				.username(username)
				.password(key)
				.build();
		
		return login(loginDto, session, res);
	}
	
	public ResponseEntity<?> login(LoginDto loginDto,
            HttpSession session,
            HttpServletResponse res){
		
		try {
			
			UsernamePasswordAuthenticationToken token =
					new UsernamePasswordAuthenticationToken(loginDto.getUsername(), loginDto.getPassword());
			
			Authentication authentication = authenticationManager.authenticate(token);
			SecurityContextHolder.getContext().setAuthentication(authentication);
			
//        res.setHeader("Set-Cookie", SecurityContextHolder.getContext().toString());
			
//        session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
//                  SecurityContextHolder.getContext());
			
			//User user = userRepository.findByUsername(username);
			
			return new ResponseEntity<String>("ok", HttpStatus.OK);
			
		}catch(Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>("서버 시큐리티 로그인 실패", HttpStatus.OK);
		}
		//return new AuthenticationToken(user.getUsername(), user.getAuthorities(), session.getId());
	}

	public  ResponseEntity<?> boardList() {
		try {
			return new ResponseEntity<List<Board>>(boardRepository.findAll(), HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>("서버 - 시큐리티 로그인 실패", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	public ResponseEntity<?> rankList(Pageable pageable) {
		try {
			return new ResponseEntity<Page<RankData>>(rankRepository.findAll(pageable), HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>("서버 - 랭크 데이터 조회 실패", HttpStatus.INTERNAL_SERVER_ERROR);
		}		
	}

	public ResponseEntity<?> championList(String orderBy) {
		try {
			ChampionDto championDto = new ChampionDto();
			if(orderBy.equals("win")) {
				championDto.setTopList(championRepository.mFindOnlyLaneWinRate("top"));
				championDto.setJungleList(championRepository.mFindOnlyLaneWinRate("jungle"));
				championDto.setMidList(championRepository.mFindOnlyLaneWinRate("mid"));
				championDto.setBottomList(championRepository.mFindOnlyLaneWinRate("bottom"));
				championDto.setSupList(championRepository.mFindOnlyLaneWinRate("sup"));
			}else if(orderBy.equals("pick")){
				championDto.setTopList(championRepository.mFindOnlyLanePickRate("top"));
				championDto.setJungleList(championRepository.mFindOnlyLanePickRate("jungle"));
				championDto.setMidList(championRepository.mFindOnlyLanePickRate("mid"));
				championDto.setBottomList(championRepository.mFindOnlyLanePickRate("bottom"));
				championDto.setSupList(championRepository.mFindOnlyLanePickRate("sup"));
			}
//			else if(orderBy.equals("ban")){
//				championDto.setTopList(championRepository.mFindOnlyLaneBanRate("top"));
//				championDto.setJungleList(championRepository.mFindOnlyLaneBanRate("jungle"));
//				championDto.setMidList(championRepository.mFindOnlyLaneBanRate("mid"));
//				championDto.setBottomList(championRepository.mFindOnlyLaneBanRate("bottom"));
//				championDto.setSupList(championRepository.mFindOnlyLaneBanRate("sup"));
//			}
			else {
				championDto.setTopList(championRepository.mFindOnlyLaneTier("top"));
				championDto.setJungleList(championRepository.mFindOnlyLaneTier("jungle"));
				championDto.setMidList(championRepository.mFindOnlyLaneTier("mid"));
				championDto.setBottomList(championRepository.mFindOnlyLaneTier("bottom"));
				championDto.setSupList(championRepository.mFindOnlyLaneTier("sup"));
			}
			return new ResponseEntity<ChampionDto>(championDto, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>("서버 - 챔피언 데이터 조회 실패", HttpStatus.CREATED);
		}		
	}
	
	

}
