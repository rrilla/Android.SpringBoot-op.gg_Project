package com.example.opggProject.service;

import java.net.URI;
import java.util.List;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.example.opggProject.domain.Summon;

@Service
public class MultiSearchService {

	//api 바꿔주셈요~~~~~~~~~ PythonContoller에서도 바꿔주세요~~~~~~~~~
	final String api_key = "RGAPI-a298ca1f-2ac6-4ea0-8301-93c1b85a566c";
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
	
	public String[] namePicker(String messages){
		String namepick = messages.replaceAll("님이 로비에 참가하셨습니다.", "");
		String[] names = namepick.split("\n");
//		for(int i=0; i<5; i++) {
//			System.out.print(names[i]);	
//		}
		return names;
	}
	
	public Summon multiSearchName(String name) {
		System.out.println("summer"+name);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity entity = makeEntity();
		URI url = URI.create("https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+name);
		ResponseEntity response = restTemplate.exchange(url, HttpMethod.GET, entity, Summon.class);
		
		Summon summer = (Summon) response.getBody();
		return summer;
	}
	
	
}
