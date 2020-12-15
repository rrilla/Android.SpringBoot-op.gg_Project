package com.example.opggProject.domain.champion;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

import com.example.opggProject.domain.rank.RankChampMastery;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
public class Champion {
   
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int cno;
   private String name;
   private int id;
   private String lane;
   private String story;
   private float winRate;
   private float pickRate;
   private float banRate;
   private int tier;
   private String englishName;
}