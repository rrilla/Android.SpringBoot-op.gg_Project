package com.example.opggProject.domain.champion;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
public class ChampionPickData {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int pno;
   private int pickNum;
   private int banBum;
   private int win;
   
   //Champion의 cno참조(FK)
      @JoinColumn(name="cno")
      @ManyToOne(fetch = FetchType.LAZY)
      private Champion champion;

}