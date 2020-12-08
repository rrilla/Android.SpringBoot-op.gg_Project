package com.example.opggProject.service.app;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.User;
import com.example.opggProject.domain.UserRepository;
import com.example.opggProject.dto.app.JoinDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AppService {
	
	private final UserRepository userRepository;
	private final BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public ResponseEntity<?> login(JoinDto joinDto) {
		String username = joinDto.getProviderId() + "_" + joinDto.getUid();
		if(userRepository.findByUsername(username) == null) {
			
			String provider = joinDto.getProviderId();
			String providerId = joinDto.getUid();
			String password = bCryptPasswordEncoder.encode("1234");
			String email = joinDto.getEmail();
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
		}
		return new ResponseEntity<String>(
				"ok"
				,HttpStatus.OK);
	}
	
}
