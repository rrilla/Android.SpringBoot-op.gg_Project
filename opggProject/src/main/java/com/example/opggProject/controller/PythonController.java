package com.example.opggProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;

import org.python.core.PyFunction;
import org.python.core.PyObject;
import org.python.core.PyString;
import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.example.opggProject.domain.Summon;
import com.example.opggProject.domain.champion.Champion;
import com.example.opggProject.domain.champion.ChampionRepository;
import com.example.opggProject.domain.game.FreeRank;
import com.example.opggProject.domain.game.GameInfo;
import com.example.opggProject.domain.game.GameItem;
import com.example.opggProject.domain.game.GameMyChampion;
import com.example.opggProject.domain.game.GameMyInfo;
import com.example.opggProject.domain.game.GameSummoner;
import com.example.opggProject.domain.game.SoloRank;
import com.example.opggProject.domain.rank.RankChampMastery;
import com.example.opggProject.domain.rank.RankData;
import com.example.opggProject.service.ChampionService;
import com.example.opggProject.service.MultiSearchService;
import com.example.opggProject.service.RankChampMasteryService;
import com.example.opggProject.service.RankService;

@Controller
public class PythonController {

	@Autowired
	private RankService rankService;

	@Autowired
	private ChampionService championService;

	@Autowired
	private RankChampMasteryService rankChampMasteryService;

	@Autowired
	private MultiSearchService multiSearchService;
	
<<<<<<< HEAD
	
	//api 바꿔주셈요~~~~~~~~~ multiSearchService도 바꿔주세요~~~~~~~~~
	final String api = "RGAPI-a298ca1f-2ac6-4ea0-8301-93c1b85a566c";
	private static PythonInterpreter intPre;


	// 랭킹 정보 넣기
	@GetMapping("rankUpdate")
	public @ResponseBody String rankUpdate() {
		intPre = new PythonInterpreter();
		intPre.execfile("src/main/clt/rankInfo.py");
		PyFunction pyFunction = (PyFunction) intPre.get("rank", PyFunction.class);

		PyObject pyobj = pyFunction.__call__(new PyString(api));
		String abc = pyobj.toString();
		System.out.println(abc);
		String[] token = abc.split(",");
		for (int i = 0; i < token.length; i = i + 5) {
			RankData rank = new RankData();
			rank.setName(token[i].replace(" ", "").replace("[", ""));
			System.out.println(token[i].replace(" ", "").replace("[", ""));
			rank.setTier(token[i + 1].replace(" ", ""));
			rank.setPoint(Integer.parseInt(token[i + 2].replace(" ", "")));
			rank.setWin(Integer.parseInt(token[i + 3].replace(" ", "")));
			rank.setLose(Integer.parseInt(token[i + 4].replace(" ", "").replace("]", "")));
			rankService.rankSave(rank);
		}
		return pyobj.toString();
	}

	// 랭킹에따른 챔피언 마스터리 뽑기
	// 파이썬에서 챌린저 그마 마스터 바꾸기
	@GetMapping("championMaster")
	public @ResponseBody String championMaster() {

		System.setProperty("python.import.site", "false");
		intPre = new PythonInterpreter();
		intPre.exec("from java.lang import System");
		intPre.execfile("src/main/clt/championMastery.py");
		PyFunction pyFunction = (PyFunction) intPre.get("champion", PyFunction.class);
		RankData name = null;
		PyObject pyobj = pyFunction.__call__(new PyString(api));
		String[] token = pyobj.toString().split(",");
		for (int i = 0; i < token.length;) {
			System.out.println(token[i].replace("[", "").replace("]", "").replace(" ","")+"슈발");
			if (token[i].replace("[", "").replace("]", "").replace(" ", "").equals("name")) {
				i++;
				System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
				name = rankService.findName(token[i].replace("[", "").replace("]", "").replace(" ", ""));
				System.out.println(name);
				i++;
			}
			if (name != null) {
				while(true) {
					System.out.println("name : " + name);
					Champion champion = championService.championName(Integer.parseInt(token[i].replace("[", "").replace("]", "").replace(" ", "")));
					System.out.println(Integer.parseInt(token[i].replace("[", "").replace("]", "").replace(" ", "")));
					i++;
					RankChampMastery mastery = new RankChampMastery();
					mastery.setRank(name);
					mastery.setChampion(champion);
					mastery.setMasteryPoint(Long.parseLong(token[i].replace("[", "").replace("]", "").replace(" ", "")));
					i++;
					rankChampMasteryService.MasterySave(mastery);
					if(token.length<=i) 
						break;
					
					else if (token[i].replace("[", "").replace("]", "").replace(" ", "").equals("name")) 
						break;
				}
				
			} else {
				while (true) {
					if (token.length <= (i+1)) {
						break;
					}
					if (token[i+2].replace("[", "").replace("]", "").replace(" ", "").equals("name")) {
						i += 2;
						break;
					} else {
						i += 2;
					}
				}
			}
			if (token.length <= (i+1)) {
				break;
			}
		}
		return "저장성공";
	}

	   @PostMapping("/summoner")
	   public String gameMatch(String username, Model model) {
	    
		   Summon summon =  multiSearchService.multiSearchName(username);
		   
		   List<GameSummoner> gameSummonerList = new ArrayList<GameSummoner>();
		      GameSummoner gameSummoner = null;
		      GameInfo gameInfo = null;
		      List<GameInfo> gameInfoList = new ArrayList<GameInfo>();
		      GameMyInfo gameMyInfo = new GameMyInfo();
		      GameMyChampion myChamp = null;
		      List<GameMyChampion> myChampList = new ArrayList<GameMyChampion>();
		      SoloRank soloRank = new SoloRank();
		      FreeRank freeRank = new FreeRank();
		      System.setProperty("python.import.site", "false");
		      intPre = new PythonInterpreter();
		      intPre.exec("from java.lang import System");
		      intPre.execfile("src/main/clt/match.py");
		      PyFunction pyFunction = (PyFunction) intPre.get("matchInfo", PyFunction.class);
		      
		      String accountId = summon.getAccountId();
		      String encId = summon.getId();
		      PyObject pyobj = pyFunction.__call__(new PyString(accountId), new PyString(encId) ,new PyString(api));
		      String abc = pyobj.toString();
		      String[] token = abc.split(",");
		      gameMyInfo.setUsername(summon.getName());
		      gameMyInfo.setProflie(summon.getProfileIconId());
		      
		      int num = 0;

		      if(token[num++].replace("[", "").replace(" ", "").equals("entire")) {

		    	  soloRank.setTier(token[num++].replace("[", "").replace(" ", ""));
		    	  soloRank.setRank(token[num++].replace(" ", ""));
		    	  soloRank.setPoint(token[num++].replace(" ", ""));
		    	  soloRank.setWin(Integer.parseInt(token[num++].replace(" ", "")));
		    	  soloRank.setLoss(Integer.parseInt(token[num++].replace(" ", "")));
		    	  freeRank.setTier(token[num++].replace(" ", ""));
		    	  freeRank.setRank(token[num++].replace(" ", ""));
		    	  freeRank.setPoint(token[num++].replace(" ", ""));
		    	  freeRank.setWin(Integer.parseInt(token[num++].replace(" ", "")));
		    	  freeRank.setLoss(Integer.parseInt(token[num++].replace(" ", "")));

			      gameMyInfo.setSoloRank(soloRank);
			      gameMyInfo.setFreeRank(freeRank);
		      }
		      else {
		    	  soloRank.setTier(token[num++].replace("[", "").replace(" ", ""));
		    	  soloRank.setRank(token[num++].replace(" ", ""));
		    	  soloRank.setPoint(token[num++].replace(" ", ""));
		    	  soloRank.setWin(Integer.parseInt(token[num++].replace(" ", "")));
		    	  soloRank.setLoss(Integer.parseInt(token[num++].replace(" ", "")));
		    	  
			      gameMyInfo.setSoloRank(soloRank);
		      }
		      
		      while(true) {
		    	  myChamp = new GameMyChampion();
		    	  myChamp.setChamName(championService.onlyname(Integer.parseInt(token[num++].replace(" ", ""))));
		    	  myChamp.setChamPoint(token[num++].replace(" ", ""));
		    	  myChampList.add(myChamp);
		    	  if(token[num].replace(" ", "").equals("finish")) {
		    		  num++;
		    		  break;
		    	  }
		      }
		      
		      gameMyInfo.setMyChampion(myChampList);
		      
		      while(num<token.length) {
		         gameInfo = new GameInfo();

		         gameInfo.setMyNum(token[num++].replace(" ", ""));

			     System.out.println(token[num].replace("[", "").replace(" ", ""));
		         gameInfo.setGameType(token[num++].replace("[", "").replace(" ", ""));
		         for (int i = 0; i <= 9; i++) {
		            gameSummoner = new GameSummoner();
		            GameItem item = new GameItem();
		            gameSummoner.setLevel(token[num++].replace(" ",""));
		            gameSummoner.setCham(token[num++].replace(" ",""));
		            gameSummoner.setSpell1(token[num++].replace(" ", ""));
		            gameSummoner.setSpell2(token[num++].replace(" ", ""));
		            gameSummoner.setName(token[num++].replace(" ",""));
		            gameSummoner.setKill(Integer.parseInt(token[num++].replace(" ","")));
		            gameSummoner.setDeath(Integer.parseInt(token[num++].replace(" ","")));
		            gameSummoner.setAssis(Integer.parseInt(token[num++].replace(" ","")));
		            gameSummoner.setTotal(Long.parseLong(token[num++].replace(" ", "")));
		            gameSummoner.setChampDamage(Long.parseLong(token[num++].replace(" ", "")));
		            gameSummoner.setHit(Long.parseLong(token[num++].replace(" ", "")));
		            gameSummoner.setGold(Long.parseLong(token[num++].replace(" ","")));
		            gameSummoner.setVision(Integer.parseInt(token[num++].replace(" ","")));
		            gameSummoner.setCs(Integer.parseInt(token[num++].replace(" ","")));
		            item.setItem1(token[num++].replace(" ",""));
		            item.setItem2(token[num++].replace(" ",""));
		            item.setItem3(token[num++].replace(" ",""));
		            item.setItem4(token[num++].replace(" ",""));
		            item.setItem5(token[num++].replace(" ",""));
		            item.setItem6(token[num++].replace(" ",""));
		            item.setItem7(token[num++].replace(" ",""));
		            gameSummoner.setGameItem(item);
		            gameSummoner.setRune(token[num++].replace(" ",""));
		            gameSummonerList.add(gameSummoner);
		         }
		         gameInfo.setGameSummonerList(gameSummonerList);

		         gameInfo.setBlueResult(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setBlueTower(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setBluebaron(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setBluedragone(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setBlueKill(Integer.parseInt(token[num++].replace(" ","")));
		         gameInfo.setBlueGold(Integer.parseInt(token[num++].replace(" ","")));

		         gameInfo.setRedResult(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setRedTower(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setRedbaron(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setReddragone(token[num++].replace("[", "").replace(" ", ""));
		         gameInfo.setRedKill(Integer.parseInt(token[num++].replace(" ","")));
		         gameInfo.setRedGold(Integer.parseInt(token[num++].replace(" ","").replace("]", "")));
		         
		         gameInfoList.add(gameInfo);
		    }
		    model.addAttribute("gameMyInfo",gameMyInfo);
		    model.addAttribute("gameInfoList",gameInfoList);
		      
			return "record/summoner";
	}

	// 멀티서치테스트
	// 일단 한글이안됨
	@GetMapping("test3")
	public @ResponseBody String test3() {
		System.setProperty("python.import.site", "false");
		intPre = new PythonInterpreter();
		intPre.exec("from java.lang import System");
		intPre.execfile("src/main/clt/multisearch.py");
		PyFunction pyFunction = (PyFunction) intPre.get("multiSearch", PyFunction.class);

		String name = "냄세제로";
		PyObject pyobj = pyFunction.__call__(new PyString(name), new PyString(api));
		String abc = pyobj.toString();
=======
	final String api = "RGAPI-3ac20c01-1492-4fe5-9fc4-8c61ca5c6f5a";
	   private static PythonInterpreter intPre;
	      
	   private HttpEntity makeEntity() {
	        HttpHeaders headers = new HttpHeaders();
	        headers.set("Origin", "https://developer.riotgames.com");
	        headers.set("Accept-Charset", "application/x-www-form-urlencoded; charset=UTF-8");
	        headers.set("X-Riot-Token", api);
	        headers.set("Accept-Language", "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7");
	        headers.set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36");

	        HttpEntity entity = new HttpEntity("parameters", headers);

	        return entity;
	    }
	   
	   //랭킹 정보 넣기
	   @GetMapping("rankUpdate")
	   public @ResponseBody String rankUpdate() {
	      intPre = new PythonInterpreter();
	      intPre.execfile("src/main/clt/rankInfo.py");
	      PyFunction pyFunction = (PyFunction)intPre.get("rank",PyFunction.class);
	      
	      
	      PyObject pyobj = pyFunction.__call__(new PyString(api));
	      String abc = pyobj.toString();
	      System.out.println(abc);
	      String [] token = abc.split(",");
	      for (int i = 0; i < token.length; i=i+6) {
	         RankData rank = new RankData();
	         rank.setName(token[i].replace(" ", "").replace("[", ""));
	         rank.setTier(token[i+1].replace(" ", ""));
	         rank.setPoint(Integer.parseInt(token[i+2].replace(" ", "")));
	         rank.setWin(Integer.parseInt(token[i+3].replace(" ", "")));
	         rank.setLose(Integer.parseInt(token[i+4].replace(" ", "")));
	         rank.setLevel(Integer.parseInt(token[i+5].replace(" ", "").replace("]", "")));
	         rankService.rankSave(rank);
	      }
	      return pyobj.toString();
	   }
	   
	   //랭킹에따른 챔피언 마스터리 뽑기
	   //일단 한글이안됨
	   @GetMapping("championMaster")
	   public @ResponseBody String championMaster() {
		  
		  
	      System.setProperty("python.import.site", "false");
	      intPre = new PythonInterpreter();
	      intPre.exec("from java.lang import System");
	      intPre.execfile("src/main/clt/championMastery.py");
	      PyFunction pyFunction = (PyFunction)intPre.get("champion",PyFunction.class);
	      
	      PyObject pyobj = pyFunction.__call__(new PyString(api));
	      String abc = pyobj.toString();
	      String [] token = abc.split(",");
	      for (int i = 0; i < token.length; i++) {
	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
	      }
	      System.out.println(abc);
	      return pyobj.toString();
	   }
	   
	   //멀티서치테스트
	   //일단 한글이안됨
	   @GetMapping("test3")
	   public @ResponseBody String test3() {
	      System.setProperty("python.import.site", "false");
	      intPre = new PythonInterpreter();
	      intPre.exec("from java.lang import System");
	      intPre.execfile("src/main/clt/multisearch.py");
	      PyFunction pyFunction = (PyFunction)intPre.get("multiSearch",PyFunction.class);
	      
	      String name = "냄세제로";
	      PyObject pyobj = pyFunction.__call__(new PyString(name),new PyString(api));
	      String abc = pyobj.toString();
>>>>>>> 2a949157bed774fd93cd162719487839bd92263b
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
		System.out.println(abc);
		return pyobj.toString();
	}

	// 그판매치
	// 일단 한글이안됨
	@GetMapping("test4")
	public @ResponseBody String test4() {
		System.setProperty("python.import.site", "false");
		intPre = new PythonInterpreter();
		intPre.exec("from java.lang import System");
		intPre.execfile("src/main/clt/match.py");
		PyFunction pyFunction = (PyFunction) intPre.get("matchInfo", PyFunction.class);

		String name = "냄세제로";
		PyObject pyobj = pyFunction.__call__(new PyString(name), new PyString(api));
		String abc = pyobj.toString();
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
		System.out.println(abc);
		return pyobj.toString();
	}

	// DB에 들어갈 매치
	@GetMapping("test5")
	public @ResponseBody String test5() {
		System.setProperty("python.import.site", "false");
		intPre = new PythonInterpreter();
		intPre.exec("from java.lang import System");
		intPre.execfile("src/main/clt/DbMatch.py");
		PyFunction pyFunction = (PyFunction) intPre.get("DbMatch", PyFunction.class);

		String name = "냄세제로";
		PyObject pyobj = pyFunction.__call__(new PyString(name), new PyString(api));
		String abc = pyobj.toString();
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
		System.out.println(abc);
		return pyobj.toString();
	}

	// DB에 들어갈 매치
	@GetMapping("test6")
	public @ResponseBody String test6() {
		System.setProperty("python.import.site", "false");
		intPre = new PythonInterpreter();
		intPre.exec("from java.lang import System");
		intPre.execfile("src/main/clt/DbMatch2.py");
		PyFunction pyFunction = (PyFunction) intPre.get("DbMatch", PyFunction.class);

		String name = "네임";
		System.out.println(new PyString(name).encode());
		PyObject pyobj = pyFunction.__call__(new PyString(name));
		String abc = pyobj.toString();
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
		System.out.println(abc);
		return "ㅋㅋㅋㅋㅋ";
	}
	

	
}