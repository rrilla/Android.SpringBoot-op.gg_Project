package com.example.opggProject.service;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.board.Board;
import com.example.opggProject.domain.board.BoardRepository;
import com.example.opggProject.domain.comment.Comment;
import com.example.opggProject.domain.comment.CommentRepository;
import com.example.opggProject.domain.user.User;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CommentService {
	
	private final CommentRepository commentRepository;
	private final BoardRepository boardRepository;
	
	@Transactional
	public Page<Comment> commentList(Pageable pageable) {
		return commentRepository.findAll(pageable);
	}
	
	@Transactional
	public void commentInsert(Comment comment, int bno, User user) {
		Board board = boardRepository.findById(bno).get();
		comment.setUser(user);
		comment.setBoard(board);
		commentRepository.save(comment);
	}
	
	@Transactional
	public int commentDelete(int bno) {
		commentRepository.deleteById(bno);
		
		return 1;
	}
}
