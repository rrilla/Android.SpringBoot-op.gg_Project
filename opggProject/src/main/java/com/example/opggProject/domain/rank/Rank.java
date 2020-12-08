package com.example.opggProject.domain.rank;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Rank {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int rno;
	private String name;
	private String tier;
	private int point;
	private int win;
	private int lose;
	
	

	
}
