package com.project.opggapp.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.google.gson.Gson;
import com.project.opggapp.R;
import com.project.opggapp.model.dto.GameMyInfo;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.model.dto.MyInfo;
import com.project.opggapp.task.IP;
import com.project.opggapp.task.RestAPIComm;

public class DetailSummonerActivity extends AppCompatActivity {

    private GameMyInfo data;
    private Boolean bookMark;
    private Gson gson = new Gson();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_summoner);

        Intent intent = getIntent();
        String detailSummoner = intent.getStringExtra("detailSummoner");

//        SharedPreferences pref = getSharedPreferences("bookMark", MODE_PRIVATE);
//        String summoner = pref.getString("summoner", "");
//        if(summoner.equals("")){
//            bookMark = false;
//        }else{
//            bookMark = true;
//        }
        //selectBattle = (Battle)intent.getSerializableExtra("selectBattle");
        //role = intent.getIntExtra("role", 0);

        //검색 or 클릭시 받은 아이디로 서버통신으로 소환사 상제정보가져오기
        RestAPIComm comm = new RestAPIComm("app/summoner?summoner="+detailSummoner);
        String[] result = new String[2];
        Gson gson = new Gson();
        try {
            result = comm.execute().get();
        }catch (Exception e){
            Toast.makeText(this, "서버 통신 오류", Toast.LENGTH_SHORT).show();
            e.printStackTrace();
        }
        // if 검색 결과없을시 '존재하지않는 소환사 리턴'
        if(result[0].equals("ok")){
            data = gson.fromJson(result[1], GameMyInfo.class);
        }else{
            Toast.makeText(this, "기능 실패 - " + result[1], Toast.LENGTH_SHORT).show();
        }

        ImageView ivProfile = findViewById(R.id.detailSummoner_iv_profile);
        TextView tvName = findViewById(R.id.detailSummoner_tv_name);
        Button btnLevel = findViewById(R.id.detailSummoner_btn_level);

        Glide.with(this).load(IP.urlProfile + data.getProflie()+".png").circleCrop().into(ivProfile);
        tvName.setText(data.getUsername());
        btnLevel.setText(data.getUserLevel() + "");

        ImageView ivMost1 = findViewById(R.id.detailSummoner_iv_most1);
        ImageView ivMost2 = findViewById(R.id.detailSummoner_iv_most2);
        ImageView ivMost3 = findViewById(R.id.detailSummoner_iv_most3);
        ImageView ivMost4 = findViewById(R.id.detailSummoner_iv_most4);
        ImageView ivMost5 = findViewById(R.id.detailSummoner_iv_most5);
        ImageView ivMost6 = findViewById(R.id.detailSummoner_iv_most6);

        TextView tvChamp1 = findViewById(R.id.detailSummoner_tv_champ1);
        TextView tvChamp2 = findViewById(R.id.detailSummoner_tv_champ2);
        TextView tvChamp3 = findViewById(R.id.detailSummoner_tv_champ3);
        TextView tvChamp4 = findViewById(R.id.detailSummoner_tv_champ4);
        TextView tvChamp5 = findViewById(R.id.detailSummoner_tv_champ5);
        TextView tvChamp6 = findViewById(R.id.detailSummoner_tv_champ6);

        TextView tvPoint1 = findViewById(R.id.detailSummoner_tv_point1);
        TextView tvPoint2 = findViewById(R.id.detailSummoner_tv_point2);
        TextView tvPoint3 = findViewById(R.id.detailSummoner_tv_point3);
        TextView tvPoint4 = findViewById(R.id.detailSummoner_tv_point4);
        TextView tvPoint5 = findViewById(R.id.detailSummoner_tv_point5);
        TextView tvPoint6 = findViewById(R.id.detailSummoner_tv_point6);

        Glide.with(this).load(IP.urlChampion + data.getMyChampion().get(0).getChamEngName()+".png").circleCrop().into(ivMost1);
        Glide.with(this).load(IP.urlChampion + data.getMyChampion().get(1).getChamEngName()+".png").circleCrop().into(ivMost2);
        Glide.with(this).load(IP.urlChampion + data.getMyChampion().get(2).getChamEngName()+".png").circleCrop().into(ivMost3);
        Glide.with(this).load(IP.urlChampion + data.getMyChampion().get(3).getChamEngName()+".png").circleCrop().into(ivMost4);
        Glide.with(this).load(IP.urlChampion + data.getMyChampion().get(4).getChamEngName()+".png").circleCrop().into(ivMost5);
        Glide.with(this).load(IP.urlChampion + data.getMyChampion().get(5).getChamEngName()+".png").circleCrop().into(ivMost6);

        tvChamp1.setText(data.getMyChampion().get(0).getChamName());
        tvChamp2.setText(data.getMyChampion().get(1).getChamName());
        tvChamp3.setText(data.getMyChampion().get(2).getChamName());
        tvChamp4.setText(data.getMyChampion().get(3).getChamName());
        tvChamp5.setText(data.getMyChampion().get(4).getChamName());
        tvChamp6.setText(data.getMyChampion().get(5).getChamName());

        tvPoint1.setText(data.getMyChampion().get(0).getChamPoint());
        tvPoint2.setText(data.getMyChampion().get(1).getChamPoint());
        tvPoint3.setText(data.getMyChampion().get(2).getChamPoint());
        tvPoint4.setText(data.getMyChampion().get(3).getChamPoint());
        tvPoint5.setText(data.getMyChampion().get(4).getChamPoint());
        tvPoint6.setText(data.getMyChampion().get(5).getChamPoint());

        ImageView ivTier1 = findViewById(R.id.detailSummoner_iv_tier1);
        ImageView ivTier2 = findViewById(R.id.detailSummoner_iv_tier2);
        TextView tvRank1 = findViewById(R.id.detailSummoner_tv_rank1);
        TextView tvRank2 = findViewById(R.id.detailSummoner_tv_rank2);
        TextView tvTier1 = findViewById(R.id.detailSummoner_tv_tier1);
        TextView tvTier2 = findViewById(R.id.detailSummoner_tv_tier2);
        TextView tvTierPoint1 = findViewById(R.id.detailSummoner_tv_tierPoint1);
        TextView tvTierPoint2 = findViewById(R.id.detailSummoner_tv_tierPoint2);
        TextView tvScore1 = findViewById(R.id.detailSummoner_tv_score1);
        TextView tvScore2 = findViewById(R.id.detailSummoner_tv_score2);

        tvRank1.setText("솔로랭크");
        tvTier1.setText(data.getSoloRank().getTier() + " " + data.getSoloRank().getRank());
        tvTierPoint1.setText(data.getSoloRank().getPoint() + " LP");
        tvScore1.setText(data.getSoloRank().getWin() +" 승 | " + data.getSoloRank().getLoss() + " 패");
        Glide.with(this).load(tierImage(data.getSoloRank().getTier())).into(ivTier1);

        tvRank2.setText("자유랭크");
        tvTier2.setText(data.getFreeRank().getTier() + " " + data.getFreeRank().getRank());
        tvTierPoint2.setText(data.getFreeRank().getPoint() + " LP");
        tvScore2.setText(data.getFreeRank().getWin() +" 승 | " + data.getFreeRank().getLoss() + " 패");
        Glide.with(this).load(tierImage(data.getFreeRank().getTier())).into(ivTier2);

        ImageView ivBookmark = findViewById(R.id.detailSummoner_iv_bookmark);
        ivBookmark.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

            }
        });
    }

    private int tierImage(String tier){
        int img ;
        if(tier.equals("CHALLENGER")){
            img = R.drawable.emblem_challenger;
        }else if(tier.equals("GRANDMASTER")){
            img = R.drawable.emblem_grandmaster;
        }else if(tier.equals("MASTER")){
            img = R.drawable.emblem_master;
        }else if(tier.equals("DIAMOND")){
            img = R.drawable.emblem_diamond;
        }else if(tier.equals("PLATINUM")){
            img = R.drawable.emblem_platinum;
        }else if(tier.equals("GOLD")){
            img = R.drawable.emblem_gold;
        }else if(tier.equals("SILVER")){
            img = R.drawable.emblem_silver;
        }else if(tier.equals("BRONZE")){
            img = R.drawable.emblem_bronze;
        }else if(tier.equals("IRON")){
            img = R.drawable.emblem_iron;
        }else {
            img = R.drawable.image_nodata;
        }
        return img;
    }
}