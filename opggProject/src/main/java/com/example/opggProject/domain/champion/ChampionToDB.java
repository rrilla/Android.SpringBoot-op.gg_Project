package com.example.opggProject.domain.champion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


import com.example.opggProject.domain.item.ItemRepository;
import com.merakianalytics.orianna.types.common.Region;
import com.merakianalytics.orianna.types.core.staticdata.Champion;
import com.merakianalytics.orianna.types.core.staticdata.Champions;
import com.merakianalytics.orianna.types.core.staticdata.Item;
import com.merakianalytics.orianna.types.core.staticdata.Items;

@RestController
public class ChampionToDB {
	@Autowired
	private ChampionRepository cr;
	@Autowired
	private ItemRepository ir;
	
	@Transactional
	public void 챔피언등록() {
		 Champions champions = Champions.withRegion(Region.KOREA).get();
			
			for(Champion champion : champions) {
				System.out.println(champion.getName()+ " "+ champion.getId());
				com.example.opggProject.domain.champion.Champion champ = new com.example.opggProject.domain.champion.Champion();
				champ.setId(champion.getId());
				champ.setName(champion.getName());
				cr.save(champ);
			}
	}
		
	@GetMapping("/putChamp")
	public String putchamp(){
		챔피언등록();
		return "ok";
	}
	
	@Transactional
	public void 아이템등록() {
		Items items = Items.withRegion(Region.KOREA).get();
		
		for(Item item : items) {
			System.out.println(item.getName()+" "+item.getTotalPrice()+" "+item.getId()+" "+item.getDescription());
			System.out.println("아이템설명 수정:"+item.getDescription().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", ""));
			com.example.opggProject.domain.item.Item it = new com.example.opggProject.domain.item.Item();
			it.setId(item.getId());
			it.setName(item.getName());
			it.setInfo(item.getDescription().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", ""));
			it.setPrice(item.getTotalPrice());
			ir.save(it);
		}
	}
	

	
	@GetMapping("/putItem")
	public String putItem(){
		아이템등록();
		return "ok";
	}
		
		
	

}
