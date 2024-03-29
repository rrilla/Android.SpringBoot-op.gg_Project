package com.example.opggProject.config.auth;

//시큐리티가 /login 주소 요청이 오면 낚아채서 로그인을 진행시킨다
// 로그인을 진행이 완료가 되면 시큐리티 session을 만들어줍니다.

import java.util.ArrayList;	
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.example.opggProject.domain.User;

import lombok.Data;

@Data
public class PrincipalDetails implements UserDetails,OAuth2User{

	private User user;
	private Map<String, Object> attributes;
	
	
	//일반 로그인
	public PrincipalDetails(User user) {
		this.user = user;
	}
	
	//OAuth 로그인
	public PrincipalDetails(User user,Map<String, Object> attributes) {
		this.user = user;
		this.attributes = attributes;
	}
	
	// 권한 체크. 권한은 하나의 권한마다 여러개의 권한을 가질 수 있어서 컬렉션으로 만들어져있음
	// 권한을 하나만 넣으려면 
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		/*Collection<GrantedAuthority> collect = new ArrayList<>();
		// 권한이 여러개면 add를 여러번 하면 된다
		collect.add(new GrantedAuthority() {
			
			@Override
			public String getAuthority() {
				return user.getRole();
			}
		});*/
		
		Collection<GrantedAuthority> collect = new ArrayList<>();
		collect.add(()->user.getRole());
		
		return collect;
	}
	
	

	@Override	// user.getpassword를 return해줘야한다
	public String getPassword() {
		return user.getPassword();
	}

	@Override	// user.getusername을 reutrn해줘야 한다 
	public String getUsername() {
		return user.getUsername();
	}

	
	// 나머지는 시큐리티가 알아서 관리한다	/ 하나라도 false면 로그인이 안됨
	
	@Override	// 계정이 만료되지 않았는지 확인 / true -> 만료x false 하면 login안됨
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override	// 계정이 잠겨있는 지 확인 / true -> 안 잠김
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override	// 비밀번호가 만료되었는지 확인 / true -> 만료x
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override	// 계정이 활성화 되어있는지 확인 / true -> 활성화 되어있음 / false -> 로그인 안됨
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public Map<String, Object> getAttributes() {
		// TODO Auto-generated method stub
		return attributes;
	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}

}

/*
	본 페이지는 PrincipalDetailsService.java의 ByUsername 함수에서 UserDetails을 return 해줘야 하는데
	
	기존의 UserDetails는 user object가 없어서 user object를 포함한 UserDetails를 return 해주기 위해 생성한 UserDetails를 상속받은 class이다

	체크할 것 : 	username, userpassword return해주기
				전부 true return 해주기
*/