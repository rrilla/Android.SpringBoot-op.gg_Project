package com.example.opggProject.domain;

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
@AllArgsConstructor	// (모든 param)생성자 만들어줌 (이거 하면 default 생성자가 사라져서 아래의 @를 추가해야 된다)
@NoArgsConstructor	// (no param)생성자 만들어줌
@Builder			// 빌더 패턴
@Entity				// object relation mapping
public class User {
	@Id				// pk. pk없으면 안 만들어준다
	@GeneratedValue(strategy = GenerationType.IDENTITY)	// 해당 db 번호증가 전략을 따라감 (oracle:시퀀스, mysql:auto increment)
	private int id;
	private String username;
	private String nickname;
	private String password;
	private String email;
	private String role;	// 구글, 네이버, 카카오 뭐할지 적기
	
}