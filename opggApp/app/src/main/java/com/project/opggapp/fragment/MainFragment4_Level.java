package com.project.opggapp.fragment;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.project.opggapp.R;
import com.project.opggapp.adapter.RakingLevelListAdapter;
import com.project.opggapp.adapter.RakingTierListAdapter;
import com.project.opggapp.model.RankData;
import com.project.opggapp.task.IP;

import java.util.ArrayList;
import java.util.List;

public class MainFragment4_Level extends Fragment {

    private ArrayList<RankData> rankDataList;

    RecyclerView recyclerView;
    RakingLevelListAdapter adapter;

    public MainFragment4_Level(ArrayList<RankData> rankDataList){
        this.rankDataList = rankDataList;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main4_level, container, false);
        if(rankDataList == null){
            return rootView;
        }

        ImageView ivImage1 = rootView.findViewById(R.id.fRakingLevel_iv_img1);
        ImageView ivImage2 = rootView.findViewById(R.id.fRakingLevel_iv_img2);
        ImageView ivImage3 = rootView.findViewById(R.id.fRakingLevel_iv_img3);
        ImageView ivImage4 = rootView.findViewById(R.id.fRakingLevel_iv_img4);
        ImageView ivImage5 = rootView.findViewById(R.id.fRakingLevel_iv_img5);

        TextView tvName1 = rootView.findViewById(R.id.fRakingLevel_tv_name1);
        TextView tvName2 = rootView.findViewById(R.id.fRakingLevel_tv_name2);
        TextView tvName3 = rootView.findViewById(R.id.fRakingLevel_tv_name3);
        TextView tvName4 = rootView.findViewById(R.id.fRakingLevel_tv_name4);
        TextView tvName5 = rootView.findViewById(R.id.fRakingLevel_tv_name5);

        ImageView tvTier1 = rootView.findViewById(R.id.fRakingLevel_iv_tier1);
        ImageView tvTier2 = rootView.findViewById(R.id.fRakingLevel_iv_tier2);
        ImageView tvTier3 = rootView.findViewById(R.id.fRakingLevel_iv_tier3);
        ImageView tvTier4 = rootView.findViewById(R.id.fRakingLevel_iv_tier4);
        ImageView tvTier5 = rootView.findViewById(R.id.fRakingLevel_iv_tier5);

        TextView tvLevel1 = rootView.findViewById(R.id.fRakingLevel_tv_level1);
        TextView tvLevel2 = rootView.findViewById(R.id.fRakingLevel_tv_level2);
        TextView tvLevel3 = rootView.findViewById(R.id.fRakingLevel_tv_level3);
        TextView tvLevel4 = rootView.findViewById(R.id.fRakingLevel_tv_level4);
        TextView tvLevel5 = rootView.findViewById(R.id.fRakingLevel_tv_level5);

        Glide.with(rootView).load(IP.urlProfile + rankDataList.get(0).getProfileIconId()+".png").circleCrop().into(ivImage1);
        Glide.with(rootView).load(IP.urlProfile + rankDataList.get(1).getProfileIconId()+".png").circleCrop().into(ivImage2);
        Glide.with(rootView).load(IP.urlProfile + rankDataList.get(2).getProfileIconId()+".png").circleCrop().into(ivImage3);
        Glide.with(rootView).load(IP.urlProfile + rankDataList.get(3).getProfileIconId()+".png").circleCrop().into(ivImage4);
        Glide.with(rootView).load(IP.urlProfile + rankDataList.get(4).getProfileIconId()+".png").circleCrop().into(ivImage5);

        tvName1.setText(rankDataList.get(0).getSummonerName());
        tvName2.setText(rankDataList.get(1).getSummonerName());
        tvName3.setText(rankDataList.get(2).getSummonerName());
        tvName4.setText(rankDataList.get(3).getSummonerName());
        tvName5.setText(rankDataList.get(4).getSummonerName());

        tvTier1.setImageResource(tierImage(rankDataList.get(0).getTier()));
        tvTier2.setImageResource(tierImage(rankDataList.get(1).getTier()));
        tvTier3.setImageResource(tierImage(rankDataList.get(2).getTier()));
        tvTier4.setImageResource(tierImage(rankDataList.get(3).getTier()));
        tvTier5.setImageResource(tierImage(rankDataList.get(4).getTier()));

        tvLevel1.setText(rankDataList.get(0).getLevel() + " LV");
        tvLevel2.setText(rankDataList.get(1).getLevel() + " LV");
        tvLevel3.setText(rankDataList.get(2).getLevel() + " LV");
        tvLevel4.setText(rankDataList.get(3).getLevel() + " LV");
        tvLevel5.setText(rankDataList.get(4).getLevel() + " LV");

        ArrayList<RankData> subList = new ArrayList<>(rankDataList.subList(5, rankDataList.size()));
        rankDataList.remove(0);
        System.out.println(subList);

        recyclerView = rootView.findViewById(R.id.recyclerView);

        //리사이클러뷰에 설정할 레이아웃 매니저 - 방향세로로 설정함.
        LinearLayoutManager layoutManager = new LinearLayoutManager(getActivity(), LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        adapter = new RakingLevelListAdapter();
        adapter.setItems(subList);
        Log.e("MainFragment4_Level", "랭킹-레벨 리스트 어댑터 관리수:" + adapter.getItemCount());

        recyclerView.setAdapter(adapter);
//        recyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() {
//            @Override
//            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
//                if (!recyclerView.canScrollVertically(-1)) {
//                    Log.e("MainFragment4_Raking", "젤위다");
//                } else if (!recyclerView.canScrollVertically(1)) {
//                    Log.e("MainFragment4_Raking", "젤밑이다");
//                } else {
//                    Log.e("MainFragment4_Raking", "??");
//                }
//            }
//        });

        return rootView;
    }

    private int tierImage(String tier){
        int img ;
        if(tier.equals("CHALLENGER")){
            img = R.drawable.emblem_challenger;
        }else if(tier.equals("GRANDMASTER")){
            img = R.drawable.emblem_grandmaster;
        }else if(tier.equals("MASTER")){
            img = R.drawable.emblem_master;
        }else {
            img = R.drawable.image_nodata;
        }
        return img;
    }
}