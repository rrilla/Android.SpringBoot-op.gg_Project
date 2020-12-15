package com.example.opggProject.dto.app;

import java.util.List;

import com.example.opggProject.domain.champion.Champion;

import lombok.Data;

@Data
public class ChampionDto {
	private List<Champion> topList;
	private List<Champion> jungleList;
	private List<Champion> midList;
	private List<Champion> bottomList;
	private List<Champion> supList;
}
