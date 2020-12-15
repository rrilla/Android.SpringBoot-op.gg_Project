package com.example.opggProject.domain.game;

import java.util.List;

import lombok.Data;

@Data
public class GameInfo {
   private String myNum;
   private String gameType;
   private String blueTower;
   private String bluebaron;
   private String bluedragone;
   private String blueResult;
   private double blueKill;
   private int blueGold;
   
   private String redTower;
   private String redbaron;
   private String reddragone;
   private String redResult;
   private double redKill;
   private int redGold;
   
   private InGameMyInfo inGameMyInfo;
   private List<GameSummoner> gameSummonerList;
}