package com.example.opggProject.domain.champion;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
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
public class Champion {
   
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int cno;
   private String name;
   @Lob //대용량 데이터
   private String story;
   
   @JsonIgnoreProperties("champion")
   @OneToMany(mappedBy = "champion", fetch = FetchType.LAZY)
   private List<ChampionPickData> championPickData;
   

}