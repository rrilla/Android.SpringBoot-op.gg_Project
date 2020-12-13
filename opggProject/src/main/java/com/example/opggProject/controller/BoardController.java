package com.example.opggProject.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.opggProject.config.auth.PrincipalDetails;
import com.example.opggProject.domain.board.Board;
import com.example.opggProject.domain.user.User;
import com.example.opggProject.service.BoardService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BoardController {
	
	private final BoardService boardService;
	
	@GetMapping("/boardList") 
	public  String board(Model model, @PageableDefault(sort = "bno", direction = Sort.Direction.DESC, size = 5) Pageable pageable) {
		Page<Board> boardList = boardService.boardList(pageable);
		model.addAttribute("boardList", boardList);
		
		return "/board/boardList";
	}

	@GetMapping("/board/write")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	// summernote에 이미지 보여주기
	@PostMapping("/board/summernote")
	public @ResponseBody ArrayList<String> summernote(MultipartFile[] files, HttpServletRequest request) {
		ArrayList<String> imageUrl = new ArrayList<String>();
		String proRoot = System.getProperty("user.dir");
		String path = proRoot.substring(0,proRoot.lastIndexOf("\\")-6) + "/board_original_images/";
		File folder = new File(path);
		if(!folder.exists()) {
			folder.mkdir();
			System.out.println("board원본저장 폴더 생성 완료!!");
		} else {
			System.out.println("이미 폴더가 있습니다!!");
		}
		for(MultipartFile file : files) {
			String filename = file.getOriginalFilename();
			String ext = filename.substring(filename.lastIndexOf("."));
			String uuid = UUID.randomUUID().toString();
			String saveFileName =  uuid + ext;
			String fileUploadPath = path + saveFileName;
			imageUrl.add("/summernoteShowImage/" + saveFileName);
			try {
				file.transferTo(new File(fileUploadPath));	//원본저장
				boardService.makeThumbnail(fileUploadPath, uuid, ext);	//resize저장
			} catch (Exception e) {
				e.getMessage();
			}
		}
		return imageUrl;
	}
	
	@PostMapping("/board/insert")
	public @ResponseBody String insert(@RequestBody Board board, @AuthenticationPrincipal PrincipalDetails principal) {
		User user = principal.getUser();
		boardService.boardInsert(board, user);
		return "ok";
	}
	
	@GetMapping("/board/detail/{bno}")
	public String boardDetail(@PathVariable int bno, Model model) {
		Board board = boardService.boardDetail(bno);
		model.addAttribute("board", board);
		return "/board/boardDetail";
	}
	
	@GetMapping("/board/modify/{bno}")
	public String boardModify(@PathVariable int bno, Model model) {
		Board board = boardService.boardDetail(bno);
		model.addAttribute("board", board);
		return "/board/boardModify";
	}
	
	@DeleteMapping("/board/delete/{bno}")
	public @ResponseBody String boardDelete(@PathVariable int bno) {
		int result = boardService.boardDelete(bno);
		if(result == 1) {
			return "ok";
		} else {
			return "fail";
		}
	}
	
	@PutMapping("/board/update/{bno}")
	public @ResponseBody String boardUpdate(@PathVariable int bno, @RequestBody Board board) {
		System.out.println("1231234124124124214124124124124" + board);
		int result = boardService.boardUpdate(bno, board);
		if(result == 1) {
			return "ok";
		} else {
			return "fail";
		}
	}
}
