package com.example.opggProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.opggProject.domain.rank.RankChampMastery;
import com.example.opggProject.domain.rank.RankChampMasteryRepository;


@Service
public class RankChampMasteryService {

	@Autowired
	private RankChampMasteryRepository rankChampMasteryRepository;
	
	public void MasterySave(RankChampMastery rankChampMastery) {
		rankChampMasteryRepository.save(rankChampMastery);
	}
	
}
