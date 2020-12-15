package com.project.opggapp.fragment;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.project.opggapp.activity.AddSummonerActivity;
import com.project.opggapp.R;
import com.project.opggapp.activity.SearchSummonerActivity;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.model.dto.MyInfo;
import com.project.opggapp.task.IP;
import com.project.opggapp.task.RestAPIComm;

import java.util.ArrayList;

import static android.content.Context.MODE_PRIVATE;

public class MainFragment1 extends Fragment {

    private SharedPreferences pref;
    private String summoner = "";

    private ImageView ivAddSummoner, ivDeleteSummoner;
    private CardView userSummoner;

    private MyInfo myInfo = null;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main1, container, false);
        ivAddSummoner = rootView.findViewById(R.id.fMain1_iv_addSummoner);
        userSummoner = rootView.findViewById(R.id.fMain1_cv_userSummoner);

        pref = getActivity().getSharedPreferences("history", MODE_PRIVATE);
        summoner = pref.getString("summoner", "");

        if(!summoner.equals("")){
            loadSummoner(rootView);
        }

        //소환사 검색
        LinearLayout llSearch = rootView.findViewById(R.id.fMain1_ll_search);
        llSearch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getContext(), SearchSummonerActivity.class);
                startActivity(intent);
                getActivity().overridePendingTransition(R.anim.translate_up, R.anim.translate_up);
            }
        });
        //앱사용자 소환사 유저 등록
        ivAddSummoner.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getContext(), AddSummonerActivity.class);
                startActivity(intent);
                getActivity().overridePendingTransition(R.anim.translate_up, R.anim.translate_up);
            }
        });

        return rootView;
        //return inflater.inflate(R.layout.fragment_main1, container, false);
    }

    private void loadSummoner(final ViewGroup rootView) {
        RestAPIComm comm = new RestAPIComm("app/summarySummoner?summoner=" + summoner);
        String[] result = new String[2];
        Gson gson = new Gson();
        try {
            result = comm.execute().get();
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(getContext(), "서버 통신 실패", Toast.LENGTH_SHORT).show();
        }
        if(result[0].equals("ok")){
            if(result[1].equals("noSummoner")){
                return;
            }else{
                myInfo = gson.fromJson(result[1], MyInfo.class);
                //Toast.makeText(getContext(), "소환사 조회 성공", Toast.LENGTH_SHORT).show();
            }
        }else{
            Toast.makeText(getContext(), "소환사 조회 실패 - " + result[1], Toast.LENGTH_SHORT).show();
        }
        ivDeleteSummoner = rootView.findViewById(R.id.fMain1_iv_deleteUser);
        ivAddSummoner.setVisibility(View.GONE);
        ivDeleteSummoner.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setMessage("즐겨찾기에서 삭제하시겠습니까?");
                builder.setPositiveButton("완료", new DialogInterface.OnClickListener(){
                    @Override
                    public void onClick(DialogInterface dialog, int id)
                    {
                        SharedPreferences.Editor editor = pref.edit();
                        editor.remove("summoner");
                        editor.commit();
                        ivAddSummoner.setVisibility(View.VISIBLE);
                        userSummoner.setVisibility(View.GONE);
                        Toast.makeText(getContext(), "삭제 완료.", Toast.LENGTH_SHORT).show();
                    }
                });
                builder.setNegativeButton("취소", null);
                AlertDialog alertDialog = builder.create();
                alertDialog.show();
            }
        });

        if(myInfo==null){
            Log.e("MainFragment1", "소환사 정보 x");
            return;
        }

        ImageView ivIcon = rootView.findViewById(R.id.fMain1_iv_uIconSummoner);
        ImageView ivEmblem = rootView.findViewById(R.id.fMain1_iv_uTier);
        TextView tvName = rootView.findViewById(R.id.fMain1_tv_uNickname);
        TextView tvTier = rootView.findViewById(R.id.fMain1_tv_uTier);
        TextView tvPoint = rootView.findViewById(R.id.fMain1_tv_uPoint);
        Button btnLevel = rootView.findViewById(R.id.fMain1_btn_uLevel);

        Glide.with(this).load(IP.urlProfile + myInfo.getProfileIconId()+".png").circleCrop().into(ivIcon);
        if(myInfo.getTier().equals("CHALLENGER")){
            Glide.with(this).load(R.drawable.emblem_challenger).into(ivEmblem);
        }else if(myInfo.getTier().equals("GRANDMASTER")){
            Glide.with(this).load(R.drawable.emblem_grandmaster).into(ivEmblem);
        }else if(myInfo.getTier().equals("MASTER")){
            Glide.with(this).load(R.drawable.emblem_master).into(ivEmblem);
        }else if(myInfo.getTier().equals("DIAMOND")){
            Glide.with(this).load(R.drawable.emblem_diamond).into(ivEmblem);
        }else if(myInfo.getTier().equals("PLATINUM")){
            Glide.with(this).load(R.drawable.emblem_platinum).into(ivEmblem);
        }else if(myInfo.getTier().equals("GOLD")){
            Glide.with(this).load(R.drawable.emblem_gold).into(ivEmblem);
        }else if(myInfo.getTier().equals("SILVER")){
            Glide.with(this).load(R.drawable.emblem_silver).into(ivEmblem);
        }else if(myInfo.getTier().equals("BRONZE")){
            Glide.with(this).load(R.drawable.emblem_bronze).into(ivEmblem);
        }else if(myInfo.getTier().equals("IRON")){
            Glide.with(this).load(R.drawable.emblem_iron).into(ivEmblem);
        }else{
            Glide.with(this).load(R.drawable.image_noimage).into(ivEmblem);
        }
        tvName.setText(myInfo.getSummonerName());
        tvTier.setText(myInfo.getTier());
        tvPoint.setText(myInfo.getLeaguePoints() + " LP");
        btnLevel.setText(myInfo.getSummonerLevel().toString());
        btnLevel.setVisibility(View.VISIBLE);

        ImageView ivImg1 = rootView.findViewById(R.id.fMain1_iv_m1Img);
        ImageView ivImg2 = rootView.findViewById(R.id.fMain1_iv_m2Img);
        ImageView ivImg3 = rootView.findViewById(R.id.fMain1_iv_m3Img);

        TextView m1Point = rootView.findViewById(R.id.fMain1_tv_m1KDA);
        TextView m2Point = rootView.findViewById(R.id.fMain1_tv_m2KDA);
        TextView m3Point = rootView.findViewById(R.id.fMain1_tv_m3KDA);

        TextView m1Text = rootView.findViewById(R.id.fMain1_tv_m1Win);
        TextView m2Text = rootView.findViewById(R.id.fMain1_tv_m2Win);
        TextView m3Text = rootView.findViewById(R.id.fMain1_tv_m3Win);

        if(myInfo.getMyChampionMastery().size()==0){
            return;
        }else if(myInfo.getMyChampionMastery().size()==1){
            m1Text.setText("숙련도");
            m1Point.setText(myInfo.getMyChampionMastery().get(0).getChampionPoints());
            Glide.with(this).load(IP.urlChampion + myInfo.getMyChampionMastery().get(0).getEnglishName()+".png").circleCrop().into(ivImg1);
        }else if(myInfo.getMyChampionMastery().size()==2){
            m1Text.setText("숙련도");
            m2Text.setText("숙련도");
            m1Point.setText(myInfo.getMyChampionMastery().get(0).getChampionPoints());
            m2Point.setText(myInfo.getMyChampionMastery().get(1).getChampionPoints());
            Glide.with(this).load(IP.urlChampion + myInfo.getMyChampionMastery().get(0).getEnglishName()+".png").circleCrop().into(ivImg1);
            Glide.with(this).load(IP.urlChampion + myInfo.getMyChampionMastery().get(1).getEnglishName()+".png").circleCrop().into(ivImg2);
        }else{
            m1Text.setText("숙련도");
            m2Text.setText("숙련도");
            m3Text.setText("숙련도");
            m1Point.setText(myInfo.getMyChampionMastery().get(0).getChampionPoints());
            m2Point.setText(myInfo.getMyChampionMastery().get(1).getChampionPoints());
            m3Point.setText(myInfo.getMyChampionMastery().get(2).getChampionPoints());
            Glide.with(this).load(IP.urlChampion + myInfo.getMyChampionMastery().get(0).getEnglishName()+".png").circleCrop().into(ivImg1);
            Glide.with(this).load(IP.urlChampion + myInfo.getMyChampionMastery().get(1).getEnglishName()+".png").circleCrop().into(ivImg2);
            Glide.with(this).load(IP.urlChampion + myInfo.getMyChampionMastery().get(2).getEnglishName()+".png").circleCrop().into(ivImg3);
        }
        //Glide.with(this).load(R.drawable.test).apply(RequestOptions.bitmapTransform(new RoundedCorners(50))).into(ivTest2);
        //ivTest.setImageResource(R.drawable.emblem_bronze);
        userSummoner.setVisibility(View.VISIBLE);
    }
}