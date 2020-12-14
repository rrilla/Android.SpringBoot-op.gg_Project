package com.example.opggProject.controller;

import java.net.URI;
import java.net.URL;
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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.example.opggProject.domain.Summon;
import com.example.opggProject.domain.multiSearch.Kda;
import com.example.opggProject.domain.multiSearch.MatchInfo;
import com.example.opggProject.domain.multiSearch.SummInfo;
import com.example.opggProject.domain.rank.RankData;
import com.example.opggProject.service.ChampionService;

@Controller

public class MultiSearchController {

	@Autowired
	private ChampionService championService;
	
	final String api_key = "RGAPI-74897f1d-e702-489a-8fb9-c5a6550e92e0";
	private static PythonInterpreter intPre;
	private HttpEntity makeEntity() {
		HttpHeaders headers = new HttpHeaders();
		headers.set("Origin", "https://developer.riotgames.com");
        headers.set("Accept-Charset", "application/x-www-form-urlencoded; charset=UTF-8");
        headers.set("X-Riot-Token", api_key);
        headers.set("Accept-Language", "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7");
        headers.set("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36");
        
        HttpEntity entity = new HttpEntity("parameters",headers);
        
        return entity;
	}
	
	@PostMapping("/multiSearch")
	public @ResponseBody List<MatchInfo> multiSearch(@RequestParam("content") String list, Model model) {
//		System.out.println(list);
		SummInfo summInfo = null;
		MatchInfo matchInfo = null;
		List<SummInfo> summInfoList = new ArrayList<SummInfo>();
		List<MatchInfo> matchInfoList = new ArrayList<MatchInfo>();
		List<Kda> kdaList = new ArrayList<Kda>();
		Kda kda = null;
		List<Summon> summ = new ArrayList<Summon>();
		int num = 0;
		String[] summername = list.split("\\r\\n");
		for (int i = 0; i < summername.length; i++) {
			summername[i] = summername[i].replaceAll(" 님이 로비에 참가하셨습니다.", "");
			summ.add(multiSearchName(summername[i]));
			
		}
		
		
		
		intPre = new PythonInterpreter();
		intPre.execfile("src/main/clt/multiSearch.py");
		PyFunction pyFunction = (PyFunction) intPre.get("multiSearch", PyFunction.class);
		
		for (int i = 0; i < summ.size(); i++) {
			PyObject pyobj = pyFunction.__call__(new PyString(api_key), new PyString(summ.get(i).getAccountId()), new PyString(summ.get(i).getId()));
			System.out.println(pyobj.toString()+"ㅈ됐따");
			String[] token = pyobj.toString().split(",");
			
			summInfo = new SummInfo();
			
			summInfo.setTier(token[num].replace(" ", "").replace("[", ""));
			summInfo.setTierNum(token[num+1].replace(" ", ""));
			summInfo.setPoint(token[num+2].replace(" ", ""));
			summInfo.setWin(Integer.parseInt(token[num+3].replace(" ", "")));
			summInfo.setLoss(Integer.parseInt(token[num+4].replace(" ", "").replace("]", "")));
			summInfo.setName(summername[i]);
			
			summInfoList.add(summInfo);
			
			num = num + 5;
			
			if(token.length <= num) break;
			
			for (int l = num; l < token.length; l+=5) {
				kda =  new Kda();
				kda.setChampionName(championService.onlyname(Integer.parseInt(token[l].replace(" ", ""))));
				kda.setKill(token[l+1].replace(" ", ""));
				kda.setDeath(token[l+2].replace(" ", ""));
				kda.setAssis(token[l+3].replace(" ", ""));
				kda.setResult(token[l+4].replace(" ", "").replace("]", ""));
				kdaList.add(kda);
				num = num + 5;
			}
			matchInfo = new MatchInfo();
			matchInfo.setKda(kdaList);
			matchInfoList.add(matchInfo);
			
		}
		model.addAttribute("summInfoList",summInfoList);
		model.addAttribute("matchInfoList",matchInfoList);
		
		return matchInfoList;
	}
	

	public Summon multiSearchName(String name) {
		System.out.println("summer"+name);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity entity = makeEntity();
		URI url = URI.create("https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name);
		ResponseEntity response = restTemplate.exchange(url, HttpMethod.GET, entity, Summon.class);
		
		Summon summoner = (Summon) response.getBody();
		return summoner;
	}
	
	
}
