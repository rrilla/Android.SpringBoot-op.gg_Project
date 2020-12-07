package com.example.opggProject.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class MultiSearchService {

	public String[] namePicker(String messages){
		String namepick = messages.replaceAll("님이 로비에 참가하셨습니다.", "");
		String[] names = namepick.split("\n");
//		for(int i=0; i<5; i++) {
//			System.out.print(names[i]);	
//		}
		return names;
	}
	
	
	
	
}
