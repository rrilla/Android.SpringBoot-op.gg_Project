package com.example.opggProject.domain.game;

import lombok.Data;

@Data
public class SoloRank {
	
	private String tier;
	private String rank;
	private String point;
	private int win;
	private int loss;
}
