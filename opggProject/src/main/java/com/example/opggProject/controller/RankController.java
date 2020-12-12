package com.example.opggProject.controller;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.opggProject.domain.rank.RankData;
import com.example.opggProject.service.RankService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class RankController {
	
	private final RankService rankService;
	
	@GetMapping("/ranking")
	public String ranking(@PageableDefault(direction = Direction.ASC, sort = "rno", size =  10) Pageable pageable, Model model) {
		Page<RankData> rankList = rankService.rankList(pageable);
		model.addAttribute("rankList", rankList);
		return "/ranking/ladder";
	}
}
