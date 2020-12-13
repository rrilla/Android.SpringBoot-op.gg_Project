package com.example.opggProject.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.board.Board;
import com.example.opggProject.domain.board.BoardRepository;
import com.example.opggProject.domain.user.User;

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
		//썸네일 뽑기 - 젤 첫 이미지url
		int n = board.getContent().indexOf("<img");	
		int n2 = board.getContent().indexOf('"', n) + 1;
		int n3 = board.getContent().indexOf('"', n2);
		String thumbnail = board.getContent().substring(n2, n3);
		
		board.setUser(user);
		board.setThumbnail(thumbnail);
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
