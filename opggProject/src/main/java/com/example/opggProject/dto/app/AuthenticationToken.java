package com.example.opggProject.dto.app;

import java.util.Collection;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AuthenticationToken {

	 private String username;
     private Collection authorities;
     private String token;
     
}
