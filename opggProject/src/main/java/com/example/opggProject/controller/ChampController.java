package com.example.opggProject.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.opggProject.domain.champion.Champion;
import com.example.opggProject.service.ChampService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ChampController {
	
	private final ChampService champService;
	
	@GetMapping("/champ")
	public String champForm(Model model) {
		model.addAttribute("champList", champService.chmapList());
		model.addAttribute("champTierList", champService.champTierList());
		model.addAttribute("champWinRateList", champService.champWinRateList());
		model.addAttribute("champPickRateList", champService.champPickRateList());
		model.addAttribute("champBanRateList", champService.champBanRateList());
		return "/champ/statistics";
	}
}
