package com.example.opggProject.controller;

import java.util.ArrayList;
import java.util.List;

import org.python.core.PyFunction;
import org.python.core.PyObject;
import org.python.core.PyString;
import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.opggProject.domain.Summon;
import com.example.opggProject.domain.multiSearch.Kda;
import com.example.opggProject.domain.multiSearch.SummInfo;
import com.example.opggProject.service.ChampionService;
import com.example.opggProject.service.MultiSearchService;

@Controller

public class MultiSearchController {

   @Autowired
   private ChampionService championService;
   
   @Autowired
   private MultiSearchService multiSearchService;
   
   final String api_key = "RGAPI-9bde8fea-8858-4df7-9404-054a902b80ca";
   private static PythonInterpreter intPre;

   
   @PostMapping("/multiSearch")
   public String multiSearch(@RequestParam("content") String list, Model model) {
//      System.out.println(list);
      SummInfo summInfo = null;
      List<SummInfo> summonerInfoList = new ArrayList<SummInfo>();
      
      Kda kda = null;
      List<Summon> summ = new ArrayList<Summon>();
      int num = 0;
      String[] summername = list.split("\\r\\n");
      for (int i = 0; i < summername.length; i++) {
         summername[i] = summername[i].replace(" ","").replaceAll("님이로비에참가하셨습니다.", "");
         summ.add(multiSearchService.multiSearchName(summername[i]));
         
      }
      
      
      
      intPre = new PythonInterpreter();
      intPre.execfile("src/main/clt/multiSearch.py");
      PyFunction pyFunction = (PyFunction) intPre.get("multiSearch", PyFunction.class);
      
      for (int i = 0; i < summ.size(); i++) {
         System.out.println(summ.get(i).getAccountId());
         System.out.println(summ.get(i).getId());
         PyObject pyobj = pyFunction.__call__(new PyString(api_key), new PyString(summ.get(i).getAccountId()), new PyString(summ.get(i).getId()));
         System.out.println(pyobj.toString()+"ㅈ됐따");
         String[] token = pyobj.toString().split(",");
         List<Kda> kdaList = new ArrayList<Kda>();
         summInfo = new SummInfo();
         
         summInfo.setTier(token[num].replace(" ", "").replace("[", ""));
         summInfo.setTierNum(token[num+1].replace(" ", ""));
         summInfo.setPoint(token[num+2].replace(" ", ""));
         summInfo.setWin(Integer.parseInt(token[num+3].replace(" ", "")));
         summInfo.setLoss(Integer.parseInt(token[num+4].replace(" ", "").replace("]", "")));
         summInfo.setName(summername[i]);
         
         
         num = num + 5;
         
         if(token.length <= num) {
            summonerInfoList.add(summInfo);
         }
         else {
            for (int l = num; l < token.length; l+=5) {
               kda =  new Kda();
               kda.setChampionName(championService.onlyengname(Integer.parseInt(token[l].replace(" ", ""))));
               kda.setKill(token[l+1].replace(" ", ""));
               kda.setDeath(token[l+2].replace(" ", ""));
               kda.setAssis(token[l+3].replace(" ", ""));
               kda.setResult(token[l+4].replace(" ", "").replace("]", ""));
               kdaList.add(kda);
               num = num + 5;
            }
            summInfo.setKda(kdaList);
            summonerInfoList.add(summInfo);
         }
         
         
         
      }
      model.addAttribute("summonerInfoList",summonerInfoList);
      
      return "multiSearch/multiSearchForm";
   }
   

   
   
}