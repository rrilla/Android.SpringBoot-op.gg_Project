package com.example.opggProject.domain.game;

import java.util.List;

import lombok.Data;

@Data
public class GameMyInfo {
	   private String username;
	   private String proflie;
	   private Long userLevel;
	   private SoloRank soloRank;
	   private FreeRank freeRank;
	   private List<GameMyChampion> myChampion;
	}