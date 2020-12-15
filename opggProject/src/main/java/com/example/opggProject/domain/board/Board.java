package com.example.opggProject.domain.board;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.CreationTimestamp;

import com.example.opggProject.domain.comment.Comment;
import com.example.opggProject.domain.user.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Board {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bno;
	private String title;
	private String thumbnail;
	
	@Column(length = 100000)
	private String content;
	
	@CreationTimestamp
	private Timestamp writeDate;
	
	@JoinColumn(name = "userId")
	@ManyToOne
	private User user;
	
	@JsonIgnoreProperties({"board"})
	@OneToMany(mappedBy = "board")
	private List<Comment> comments;
}
