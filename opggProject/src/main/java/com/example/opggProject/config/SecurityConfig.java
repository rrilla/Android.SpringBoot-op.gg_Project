package com.example.opggProject.config;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.opggProject.config.oauth.PrincipalOauth2UserService;

@EnableWebSecurity	// Security 설정 file 활성화. Security의 기본 설정을 무시하고, 해당 class를 참조한다
@Configuration		// IoC 등록
public class SecurityConfig extends WebSecurityConfigurerAdapter{	// Adapter : 원래. interface
	
	@Autowired
	private PrincipalOauth2UserService principalOauth2UserService;
	
	@Bean	// 메서드의 리턴값을 ioc에 등록. 솔트때문에 싱글톤으로 관리
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}// 패스워드를 해킹 못 하게 안전하게 인코딩 해주는 애 (7일차 login-hash설명 참고)
	// spring이 암호화 할 때 얘로 디코딩해서 얘로 하는데 만약 다른거로 인코딩 하고싶으면 스프링이 디코딩하는 방식을 설정해줘야 한다
	// 위에 문장 말이 이상한거 같긴한데,
	
	@Override		// 오버라이드 해야 하는 것
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable(); 	// csrf 토큰을 사용하지 않는다. 6일차 참고. // formTag request만 가능한 것을 비활성화
		http.authorizeRequests()
			.antMatchers("/user/**").authenticated()	// 이 주소로 들어오면 인증이 필요하고
			.antMatchers("/manager/**").access("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')")	// 일반적인 유저는 못 들어가고 Role이 있어야 들어갈 수 있따
			.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
			.anyRequest().permitAll()					// 다른 주소는 인증 필요x
			.and()
			.formLogin().loginPage("/loginForm")		// LoginPage의 주소를 설정한다
			.loginProcessingUrl("/loginProc") //login 주소가 호출이 되면 낚아채서 대신 로그인을 진행해줌
			.defaultSuccessUrl("/success")
			.and()
			.logout().logoutSuccessUrl("/success").and()
			.oauth2Login()
			.loginPage("/loginForm")
			.userInfoEndpoint()
			.userService(principalOauth2UserService).and().defaultSuccessUrl("/success"); // 코드x (액세스토큰+사용자프로필정보O)
	}

}
