package com.example.opggProject.domain.champion;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.opggProject.domain.rank.RankData;

public interface ChampionRepository extends JpaRepository<Champion,Integer>{

	
	@Query(value = "SELECT * FROM champion WHERE id = :id", nativeQuery = true)
	Champion mFindid(int id);
	
	@Query(value = "SELECT name FROM champion WHERE id = :id", nativeQuery = true)
	String mFindOnlyName(int id);
	
	@Query(value = "SELECT englishName FROM champion WHERE id = :id", nativeQuery = true)
	String mFindOnlyEngName(int id);
	
	
}
