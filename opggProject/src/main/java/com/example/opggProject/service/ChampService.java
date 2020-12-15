package com.example.opggProject.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;import org.springframework.stereotype.Service;

import com.example.opggProject.domain.champion.Champion;
import com.example.opggProject.domain.champion.ChampionRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ChampService {
	
	private final ChampionRepository champRepository;
	
	// 챔프 이름 순으로 목록
	@Transactional
	public List<Champion> chmapList() { 
		return champRepository.findAllOrderByName();
	}
	
	// 챔프 티어순으로 목록
	@Transactional
	public List<Champion> champTierList() {
		return champRepository.findAllOrderByTier();
	}
	
	// 챔프 승률순으로 목록
	@Transactional
	public List<Champion> champWinRateList() {
		return champRepository.findAllOrderByWinRate();
	}
	
	// 챔프 픽률순으로 목록
	@Transactional
	public List<Champion> champPickRateList() {
		return champRepository.findAllOrderByPickRate();
	}
	
	// 챔프 밴률순으로 목록
	@Transactional
	public List<Champion> champBanRateList() {
		return champRepository.findAllOrderByBanRate();
	}
}
