package com.example.opggProject.service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.transaction.Transactional;

import org.imgscalr.Scalr;
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
		//이미지 없을시 기본값
		String thumbnail = "summernoteShowImage/noImage.png";
		if(n != -1) {
			int n2 = board.getContent().indexOf('"', n) + 2;
			int n3 = board.getContent().indexOf('"', n2);
			thumbnail = board.getContent().substring(n2, n3);
		}
		//이미지 띄우기전 줄바꿈 추가
		String content = board.getContent().replace("<img", "</br><img");
		
		board.setUser(user);
		board.setThumbnail(thumbnail);
		board.setContent(content);
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

	//board 업로드 사진 resize해서 따로저장
	public void makeThumbnail(String fileUploadPath, String uuid, String ext) throws IOException {
		String proRoot = System.getProperty("user.dir");
		//저장경로
		String path = proRoot.substring(0,proRoot.lastIndexOf("\\")-6) + "/board_resize_images/";
		
		File folder = new File(path);
		if(!folder.exists()) {
			folder.mkdir();
			System.out.println("썸네일 폴더 생성 완료!!");
		} else {
			System.out.println("이미 폴더가 있습니다!!");
		}
		
		// 저장된 원본파일로부터 BufferedImage 객체를 생성
		BufferedImage srcImg = ImageIO.read(new File(fileUploadPath));
		// 썸네일의 너비와 높이
		int dw = 250, dh = 150;
		// 원본 이미지의 너비와 높이
		int ow = srcImg.getWidth();
		int oh = srcImg.getHeight();
		
		// 원본 너비를 기준으로 썸네일의 비율로 높이 계산
		int nw = ow; int nh = (ow * dh) / dw;
		// 계산된 높이가 원본보다 높다면 crop이 안되므로
		// 원본 높이를 기준으로 썸네일의 비율로 너비를 계산
		if(nh > oh) {
			nw = (oh * dw) / dh;
			nh = oh;
		}
		
		// 계산된 크기로 원본이미지를 가운데에서 crop
		BufferedImage cropImg = Scalr.crop(srcImg, (ow-nw)/2, (oh-nh)/2, nw, nh);
		// crop된 이미지로 썸네일을 생성
		BufferedImage destImg = Scalr.resize(cropImg, dw, dh);
		// 썸네일 저장
		String thumbName = path + uuid + ext;
		File thumbFile = new File(thumbName);
		ImageIO.write(destImg, ext.substring(1), thumbFile);
	}
}
