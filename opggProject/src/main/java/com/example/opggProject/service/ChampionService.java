package com.example.opggProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.champion.Champion;
import com.example.opggProject.domain.champion.ChampionRepository;
import com.example.opggProject.domain.rank.RankData;

@Service
public class ChampionService {

	@Autowired
	private ChampionRepository championRepository;
	
	public Champion championName(int id) {
		return championRepository.mFindid(id);
	} 
	
	public String onlyname(int id) {
		return championRepository.mFindOnlyName(id);
	}
	
	public String onlyengname(String id) {
		return championRepository.mFindOnlyEnglishName(id);
	}
}
