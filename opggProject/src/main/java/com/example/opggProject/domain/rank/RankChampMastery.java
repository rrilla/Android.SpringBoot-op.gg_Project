package com.example.opggProject.domain.rank;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.example.opggProject.domain.champion.Champion;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
public class RankChampMastery {

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int rcno;
   private String championName;
   private Long masteryPoint;
   
   @JoinColumn(name="rankId")
   @ManyToOne(fetch = FetchType.LAZY)
   private RankData rank;
}