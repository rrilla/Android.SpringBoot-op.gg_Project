package com.example.opggProject.config.auth;

import java.util.Collection;	

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.User;
import com.example.opggProject.domain.UserRepository;



//principal : 인증 주체 (접근 주체). 인증이 된 obj라고 생각하면 된다
//원래 IoC에 UserDetailsService가 써있는데, 시큐리티의 로그인을 진행하면 UserDetailsService안에 
//loadUserByUsername를 탄다. 근데 UserDetailsService를 구현한 PrincipalDetailsService를 IoC에 등록하면
//오버라이딩돼서 얘가 실행된다 (로그인 진행시)
@Service
public class PrincipalDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;
	
	// 로그인을 하면 loadUserByUsername이 함수를 찾는다
	// 시큐리티 session  = Authentication = UserDetails
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("로그인 요청됨");
		// 여기서는 유저 네임 있는지 확인(셀렉트해서)
		// 오브젝트가 리턴 되면 그 값을 알아서 비교해줌?
		// 즉, 셀렉트해서 오브젝트 가져와서 있는지만 확인하면, 패스워드 체크는 시큐리티가 해준다
		
		User userEntity = userRepository.findByUsername(username);
		if(userEntity == null) {
			return null;
		}else {
			return new PrincipalDetails(userEntity);	// 유저를 가지고있는 PrincipalDetails를 return하기 위해서 만들어서 넣는다
		}
		
	}// default는 null이라서 아무것도 진행이 안되는 거

}

/* 
	우선 Security는 login요청이 들어오면 UserDetailsService의 loadUserByUsername를 실행한다
	
	default값을 오버라이딩하기 위해서 UserDetailsService를 상속받은 class를 생성한다 -> PrincipalDetailsService (@Service)

	상식적으로 로그인 요청이 들어오면 ID, PW를 비교해서 맞으면 통과, 틀리면 탈락을 시켜야 한다

	loadUserByUsername는 UserDetails를 return하는데 여기에는 Security가 해당 user를 관리하기 위한 data가 들어있다 (id, pw. lock여부 등등)

	본문에서 return해주는 PrincipalDetails는 위에서 말한 UserDetails를 상속받은 class인데, user object를 추가로 가지고 있다
	
	결론은 loadUserByUsername에서 UserDetails를 return해주면 UserDetails안에 있는 getusername, getpassword를 통해서 ID, PW가 맞는지 확인해 로그인을 진행해준다
	
	참고로 로그인이 성공했을 때의 설정은 SecurityConfig.java의 .defaultSuccessUrl("/");를 통해 성공했을 때 redirect하는 경로를 설정할 수 있다

*/