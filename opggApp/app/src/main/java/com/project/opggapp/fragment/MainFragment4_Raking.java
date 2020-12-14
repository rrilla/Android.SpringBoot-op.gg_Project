package com.project.opggapp.fragment;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.project.opggapp.R;
import com.project.opggapp.adapter.RakingTierListAdapter;
import com.project.opggapp.model.RankData;

import java.util.ArrayList;

public class MainFragment4_Raking extends Fragment {

    private ArrayList<RankData> rankDataList;

    RecyclerView recyclerView;
    RakingTierListAdapter adapter;

    public MainFragment4_Raking(ArrayList<RankData> rankDataList){
        this.rankDataList = rankDataList;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main4_raking, container, false);

        ImageView ivImage1 = rootView.findViewById(R.id.fRakingTier_iv_img1);
        ImageView ivImage2 = rootView.findViewById(R.id.fRakingTier_iv_img2);
        ImageView ivImage3 = rootView.findViewById(R.id.fRakingTier_iv_img3);
        ImageView ivImage4 = rootView.findViewById(R.id.fRakingTier_iv_img4);
        ImageView ivImage5 = rootView.findViewById(R.id.fRakingTier_iv_img5);

        TextView tvName1 = rootView.findViewById(R.id.fRakingTier_tv_name1);
        TextView tvName2 = rootView.findViewById(R.id.fRakingTier_tv_name2);
        TextView tvName3 = rootView.findViewById(R.id.fRakingTier_tv_name3);
        TextView tvName4 = rootView.findViewById(R.id.fRakingTier_tv_name4);
        TextView tvName5 = rootView.findViewById(R.id.fRakingTier_tv_name5);

        TextView tvTier1 = rootView.findViewById(R.id.fRakingTier_tv_tier1);
        TextView tvTier2 = rootView.findViewById(R.id.fRakingTier_tv_tier2);
        TextView tvTier3 = rootView.findViewById(R.id.fRakingTier_tv_tier3);
        TextView tvTier4 = rootView.findViewById(R.id.fRakingTier_tv_tier4);
        TextView tvTier5 = rootView.findViewById(R.id.fRakingTier_tv_tier5);

        TextView tvPoint1 = rootView.findViewById(R.id.fRakingTier_tv_point1);
        TextView tvPoint2 = rootView.findViewById(R.id.fRakingTier_tv_point2);
        TextView tvPoint3 = rootView.findViewById(R.id.fRakingTier_tv_point3);
        TextView tvPoint4 = rootView.findViewById(R.id.fRakingTier_tv_point4);
        TextView tvPoint5 = rootView.findViewById(R.id.fRakingTier_tv_point5);

        //Glide.with(rootView).load(rankDataList.get(0).getProfileIconId()).into(ivImage1);

        Log.e("MainFragment4_raking", rankDataList.toString());

        tvName1.setText(rankDataList.get(0).getName());
        tvName2.setText(rankDataList.get(1).getName());
        tvName3.setText(rankDataList.get(2).getName());
        tvName4.setText(rankDataList.get(3).getName());
        tvName5.setText(rankDataList.get(4).getName());

        tvTier1.setText(rankDataList.get(0).getTier());
        tvTier2.setText(rankDataList.get(1).getTier());
        tvTier3.setText(rankDataList.get(2).getTier());
        tvTier4.setText(rankDataList.get(3).getTier());
        tvTier5.setText(rankDataList.get(4).getTier());

        tvPoint1.setText(rankDataList.get(0).getPoint() + " LP");
        tvPoint2.setText(rankDataList.get(1).getPoint() + " LP");
        tvPoint3.setText(rankDataList.get(2).getPoint() + " LP");
        tvPoint4.setText(rankDataList.get(3).getPoint() + " LP");
        tvPoint5.setText(rankDataList.get(4).getPoint() + " LP");

        //rankDataList = (ArrayList<RankData>) rankDataList.subList(4, rankDataList.size());


        recyclerView = rootView.findViewById(R.id.recyclerView);

        //리사이클러뷰에 설정할 레이아웃 매니저 - 방향세로로 설정함.
        LinearLayoutManager layoutManager = new LinearLayoutManager(getActivity(), LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        adapter = new RakingTierListAdapter();
        adapter.setItems(rankDataList);
        Log.e("MainFragment4_Raking", "랭킹 리스트 어댑터 관리수:" + adapter.getItemCount());

        recyclerView.setAdapter(adapter);
        recyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                if (!recyclerView.canScrollVertically(-1)) {
                    Log.e("MainFragment4_Raking", "젤위다");
                } else if (!recyclerView.canScrollVertically(1)) {
                    Log.e("MainFragment4_Raking", "젤밑이다");
                } else {
                    Log.e("MainFragment4_Raking", "??");
                }
            }
        });



        return rootView;
        //return inflater.inflate(R.layout.fragment_main4_raking, container, false);
    }
}