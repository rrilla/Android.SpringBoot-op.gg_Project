package com.example.opggProject.domain;

import lombok.Data;

@Data
public class Summon {

	private String accountId;
	private String profileIconId;
	private Long revisionDate;
	private String name;
	private String id;
	private String puuid;
	private long summonerLevel;
}
