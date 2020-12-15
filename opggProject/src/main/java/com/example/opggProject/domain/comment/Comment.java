package com.example.opggProject.domain.comment;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

import com.example.opggProject.domain.board.Board;
import com.example.opggProject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cno;
	
	@Column(length = 100000)
	private String content;
	
	@CreationTimestamp
	private Timestamp writeDate;
	
	@JoinColumn(name = "userId")
	@ManyToOne
	private User user;
	
	
	@JoinColumn(name = "boardId")
	@ManyToOne
	private Board board;
}
