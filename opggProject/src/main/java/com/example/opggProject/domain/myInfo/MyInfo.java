package com.example.opggProject.domain.myInfo;

import java.util.List;

import lombok.Data;

@Data
public class MyInfo {

	private String summonerName;
	private Long summonerLevel;
	private String profileIconId;
	private String tier;
	private String rank;
	private String leaguePoints;
	private List<MyChampionMastery> myChampionMastery;
}
