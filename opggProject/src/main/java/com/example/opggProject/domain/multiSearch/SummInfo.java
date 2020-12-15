package com.example.opggProject.domain.multiSearch;

import java.util.List;

import lombok.Data;

@Data
public class SummInfo {

	private String name;
	private String tier;
	private String tierNum;
	private String point;
	private int win;
	private int loss;
	private List<Kda> kda;
}
