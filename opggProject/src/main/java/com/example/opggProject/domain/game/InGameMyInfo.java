package com.example.opggProject.domain.game;

import java.util.List;

import lombok.Data;

@Data
public class InGameMyInfo {
	
	private String champName;
	private String champEngName;
	private String result;
	private String spell1;
	private String spell2;
	private String rune;
	private double kill;
	private double death;
	private double assis;
	private String level;
	private int cs;
	private String team;
	private double killparti; //킬 관여율
	private int ward;
	private GameItem gameItem;
	
}
