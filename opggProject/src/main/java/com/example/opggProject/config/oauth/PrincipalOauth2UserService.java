package com.example.opggProject.config.oauth;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.example.opggProject.config.auth.PrincipalDetails;
import com.example.opggProject.domain.user.User;
import com.example.opggProject.domain.user.UserRepository;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService{
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	private UserRepository userRepository;
	
	//구글로 부터 받은 userRequest 데이터에 대한 후처리 되는 함수
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println(userRequest);
		System.out.println("getClientRegistration" + userRequest.getClientRegistration()); //registrationId로 어떤 OAuth로 로그인했는지 확인가능
		System.out.println("getAccessToken" + userRequest.getAccessToken().getTokenValue());

		
		OAuth2User oauth2User = super.loadUser(userRequest);
		// 구글로그인 버튼 클릭 -> 구글로그인창 -> 로그인을완료 -> code를 리턴(OAuth-client라이브러리) -> AccessToken요청
		// userRequest 정보 -> loadUser함수 호출 -> 구글로부터 회원프로필을 받아준다
		System.out.println("getAttributes : "+oauth2User.getAttributes());
		
		
		//회원가입을 강제로 진행해볼 예정
		String provider = userRequest.getClientRegistration().getClientId();//google
		String providerId = oauth2User.getAttribute("sub");
		String username = provider + "_" + providerId; //
		String password = bCryptPasswordEncoder.encode("겟인데어");
		String email = oauth2User.getAttribute("email");
		String role = "ROLE_USER";
		String nickname = oauth2User.getAttribute("name");
		
		User userEntity = userRepository.findByUsername(username);
		
		if(userEntity == null) {
			userEntity = User.builder()
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
		
		return new PrincipalDetails(userEntity, oauth2User.getAttributes());
	}
}
 