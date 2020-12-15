package com.example.opggProject.domain.rank;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface RankRepository extends JpaRepository<RankData,Integer>{

	@Query(value = "SELECT summonerName FROM rankdata", nativeQuery = true)
	List<String> mFindByName();
	
	@Query(value = "SELECT * FROM rankdata WHERE summonerName = :name", nativeQuery = true)
	RankData mFind(String name);
}
