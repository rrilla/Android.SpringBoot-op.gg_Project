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
   private int blueKill;
   private int blueGold;
   
   private String redTower;
   private String redbaron;
   private String reddragone;
   private String redResult;
   private int redKill;
   private int redGold;
   
   private List<GameSummoner> gameSummonerList;
}