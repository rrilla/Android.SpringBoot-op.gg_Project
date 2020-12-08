package com.example.opggProject.domain.match;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
public class Match {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int mno;
	private int matchNum;

}
