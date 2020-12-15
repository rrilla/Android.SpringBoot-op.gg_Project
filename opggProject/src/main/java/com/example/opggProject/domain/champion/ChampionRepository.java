package com.example.opggProject.domain.champion;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.opggProject.domain.rank.RankData;
import com.example.opggProject.domain.user.User;

public interface ChampionRepository extends JpaRepository<Champion,Integer>{
	
	
	@Query(value = "SELECT * FROM champion WHERE id = :id", nativeQuery = true)
	Champion mFindid(int id);
	
	@Query(value = "SELECT name FROM champion WHERE id = :id", nativeQuery = true)
	String mFindOnlyName(int id);
	
	@Query(value = "SELECT englishName FROM champion WHERE id = :id", nativeQuery = true)
	String mFindOnlyEnglishName(String id);
	
	@Query(value = "SELECT * FROM CHAMPION WHERE LANE = :lane ORDER BY tier", nativeQuery = true)
	public List<Champion> mFindOnlyLaneTier(String lane);
	
	@Query(value = "SELECT * FROM CHAMPION WHERE LANE = :lane ORDER BY winRate DESC", nativeQuery = true)
	public List<Champion> mFindOnlyLaneWinRate(String lane);
	
	@Query(value = "SELECT * FROM CHAMPION WHERE LANE = :lane ORDER BY pickRate DESC", nativeQuery = true)
	public List<Champion> mFindOnlyLanePickRate(String lane);
	
//	@Query(value = "SELECT * FROM CHAMPION WHERE LANE = :lane ORDER BY banRate DESC", nativeQuery = true)
//	public List<Champion> mFindOnlyLaneBanRate(String lane);
	
	//String mFindOnlyEngName(int id);
	

	@Query(value = "SELECT * FROM champion order by name", nativeQuery = true)
	List<Champion> findAllOrderByName();
	
	/* 티어 순서 */
	@Query(value = "SELECT * FROM champion order by tier", nativeQuery = true)
	List<Champion> findAllOrderByTier();
	
	/* 승률 순서 */
	@Query(value = "SELECT * FROM champion order by winRate desc", nativeQuery = true)
	List<Champion> findAllOrderByWinRate();
	
	/* 픽률 순서 */
	@Query(value = "SELECT * FROM champion order by pickRate desc", nativeQuery = true)
	List<Champion> findAllOrderByPickRate();
	
	/* 밴률 순서 */
	@Query(value = "SELECT * FROM champion order by banRate desc", nativeQuery = true)
	List<Champion> findAllOrderByBanRate();
}
