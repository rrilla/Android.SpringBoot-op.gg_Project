package com.example.opggProject.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.opggProject.config.auth.PrincipalDetails;
import com.example.opggProject.domain.comment.Comment;
import com.example.opggProject.domain.user.User;
import com.example.opggProject.service.CommentService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class CommentController {
	
	private final CommentService commentService;
	
	@PostMapping("/comment/insert/{bno}")
	public String commentInsert(@RequestBody Comment comment, @PathVariable int bno, @AuthenticationPrincipal PrincipalDetails principal, @PageableDefault(sort = "cno", direction = Sort.Direction.DESC, size = 5) Pageable pageable) {
		User user = principal.getUser();
		commentService.commentInsert(comment, bno, user);
		
		return "ok";
	}
	
	@DeleteMapping("/comment/delete/{bno}")
	public String commentDelete(@PathVariable int bno) {
		int result = commentService.commentDelete(bno);
		
		if(result == 1) {
			return "ok";
		} else {
			return "fail";
		}
	}
}
