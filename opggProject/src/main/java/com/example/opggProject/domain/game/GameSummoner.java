package com.example.opggProject.domain.game;

import java.util.List;

import lombok.Data;

@Data
public class GameSummoner {

   private String level;
   private String champName;
   private String champEngName;
   private String spell1;
   private String spell2;
   private String name;
   private double kill;
   private double death;
   private double assis;
   
   private Long total;
   private Long champDamage;
   private Long hit;
   private Long gold;
   private int vision;
   private int cs;
   private GameItem gameItem;
   private String rune;
}