package com.example.opggProject.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.User;
import com.example.opggProject.domain.board.Board;
import com.example.opggProject.domain.board.BoardRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class BoardService {
	
	private final BoardRepository boardRepository;
	
	// 게시판 리스트 뽑기
	@Transactional
	public Page<Board> boardList(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	// 게시판 글쓰끼
	@Transactional
	public void boardInsert(Board board, User user) {
		board.setUser(user);
		boardRepository.save(board);
	}
	
	@Transactional
	public Board boardDetail(int bno) {
		return boardRepository.findById(bno).get();
	}
	
	@Transactional
	public int boardDelete(int bno) {
		boardRepository.deleteById(bno);
		return 1;
	}
	
	@Transactional
	public int boardUpdate(int bno, Board board) {
		Board boardEntity = boardRepository.findById(bno).get();
		boardEntity.setTitle(board.getTitle());
		boardEntity.setContent(board.getContent());
		boardRepository.save(boardEntity);
		return 1;
	}
}
