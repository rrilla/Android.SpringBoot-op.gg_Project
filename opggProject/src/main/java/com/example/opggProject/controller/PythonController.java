package com.example.opggProject.controller;

import org.springframework.stereotype.Controller;
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
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.example.opggProject.domain.Summername;
import com.example.opggProject.domain.rank.RankData;
import com.example.opggProject.service.RankService;

@Controller
public class PythonController {
	 
	@Autowired
	private RankService rankService;
	
	final String api = "RGAPI-be18fde6-086f-458b-b3b1-a1eda49a519c";
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
	      for (int i = 0; i < token.length; i=i+5) {
	         RankData rank = new RankData();
	         rank.setName(token[i].replace(" ", "").replace("[", ""));
	         rank.setTier(token[i+1].replace(" ", ""));
	         rank.setPoint(Integer.parseInt(token[i+2].replace(" ", "")));
	         rank.setWin(Integer.parseInt(token[i+3].replace(" ", "")));
	         rank.setLose(Integer.parseInt(token[i+4].replace(" ", "").replace("]", "")));
	         rankService.rankSave(rank);
	      }
	      return pyobj.toString();
	   }
	   
	   //랭킹에따른 챔피언 마스터리 뽑기
	   //일단 한글이안됨
	   @GetMapping("championMaster")
	   public @ResponseBody List<String> championMaster() {
		  
		  List<RankData> rankList = rankService.rankList();  
		  List<String> aaa = new ArrayList<String>();
		  for (int i = 0; i < rankList.size(); i++) {
			
			aaa.add(summer(rankList.get(i).getName()).getId());
			
		}
		  
//	      System.setProperty("python.import.site", "false");
//	      intPre = new PythonInterpreter();
//	      intPre.exec("from java.lang import System");
//	      intPre.execfile("src/main/clt/championMastery.py");
//	      PyFunction pyFunction = (PyFunction)intPre.get("champion",PyFunction.class);
//	      
//	      String name = "냄세제로";
//	      PyObject pyobj = pyFunction.__call__(new PyString(name),new PyString(api));
//	      String abc = pyobj.toString();
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
//	      System.out.println(abc);
	      return aaa;
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
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
	      System.out.println(abc);
	      return pyobj.toString();
	   }
	   
	   //그판매치
	   //일단 한글이안됨
	   @GetMapping("test4")
	   public @ResponseBody String test4() {
	      System.setProperty("python.import.site", "false");
	      intPre = new PythonInterpreter();
	      intPre.exec("from java.lang import System");
	      intPre.execfile("src/main/clt/match.py");
	      PyFunction pyFunction = (PyFunction)intPre.get("matchInfo",PyFunction.class);
	      
	      String name = "냄세제로";
	      PyObject pyobj = pyFunction.__call__(new PyString(name),new PyString(api));
	      String abc = pyobj.toString();
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
	      System.out.println(abc);
	      return pyobj.toString();
	   }
	   
	   //DB에 들어갈 매치
	   @GetMapping("test5")
	   public @ResponseBody String test5() {
	      System.setProperty("python.import.site", "false");
	      intPre = new PythonInterpreter();
	      intPre.exec("from java.lang import System");
	      intPre.execfile("src/main/clt/DbMatch.py");
	      PyFunction pyFunction = (PyFunction)intPre.get("DbMatch",PyFunction.class);
	      
	      String name = "냄세제로";
	      PyObject pyobj = pyFunction.__call__(new PyString(name),new PyString(api));
	      String abc = pyobj.toString();
//	      String [] token = abc.split(",");
//	      for (int i = 0; i < token.length; i++) {
//	         System.out.println(token[i].replace("[", "").replace("]", "").replace(" ", ""));
//	      }
	      System.out.println(abc);
	      return pyobj.toString();
	   }
	   
	   //DB에 들어갈 매치
	   @GetMapping("test6")
	   public @ResponseBody String test6() {
	      System.setProperty("python.import.site", "false");
	      intPre = new PythonInterpreter();
	      intPre.exec("from java.lang import System");
	      intPre.execfile("src/main/clt/DbMatch2.py");
	      PyFunction pyFunction = (PyFunction)intPre.get("DbMatch",PyFunction.class);
	      
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
	   
	   
	   public Summername summer (String name) {
	      RestTemplate restTemplate = new RestTemplate();
	      HttpEntity entity = makeEntity();
	      URI url = URI.create("https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + name);
	      
	      ResponseEntity response = restTemplate.exchange(url, HttpMethod.GET, entity, Summername.class);
	      
	      Summername summ = (Summername) response.getBody();
	      System.out.println(summ.getName());
	      return summ;
	   }
}