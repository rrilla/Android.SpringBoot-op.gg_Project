package com.example.opggProject.domain.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor	// (no param)생성자 만들어줌
@Entity				// object relation mapping
public class User {
	@Id				// pk. pk없으면 안 만들어준다
	@GeneratedValue(strategy = GenerationType.IDENTITY)	// 해당 db 번호증가 전략을 따라감 (oracle:시퀀스, mysql:auto increment)
	private int id;
	private String username;
	private String nickname;
	private String password;
	private String image;
	private String email;
	private String role;	// 구글, 네이버, 카카오 뭐할지 적기
	private String provider;
	private String providerId;
	String test;
	
	@Builder
	public User(String username, String nickname, String password, String email, String role, String provider,
			String providerId) {
		this.username = username;
		this.nickname = nickname;
		this.password = password;
		this.email = email;
		this.role = role;
		this.provider = provider;
		this.providerId = providerId;
	}
}