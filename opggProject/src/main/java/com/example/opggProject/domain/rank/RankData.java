package com.example.opggProject.domain.rank;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

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
public class RankData {

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int rno;
   private String name;
   private String tier;
   private int point;
   private int win;
   private int lose;
   private int level;
   
   @JsonIgnoreProperties({"rank","champion"})
   @OneToMany(mappedBy = "rank", fetch = FetchType.LAZY )
   private List<RankChampMastery> rankChampMastery;

   
}