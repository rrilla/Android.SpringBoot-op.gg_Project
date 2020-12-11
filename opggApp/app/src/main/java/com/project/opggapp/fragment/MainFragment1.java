package com.project.opggapp.fragment;

import android.content.Intent;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.bumptech.glide.Glide;
import com.project.opggapp.activity.AddSummonerActivity;
import com.project.opggapp.R;
import com.project.opggapp.activity.SearchSummonerActivity;

public class MainFragment1 extends Fragment {

    LinearLayout llSearch;
    ImageView ivTest, ivTest2, ivTest3, ivUser;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main1, container, false);

        llSearch = rootView.findViewById(R.id.fMain1_ll_search);
        llSearch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getContext(), SearchSummonerActivity.class);
                startActivity(intent);
                getActivity().overridePendingTransition(R.anim.translate_up, R.anim.translate_up);
            }
        });
        ImageView ivAddSummoner = rootView.findViewById(R.id.fMain1_iv_addSummoner);
        ivAddSummoner.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getContext(), AddSummonerActivity.class);
                startActivity(intent);
                getActivity().overridePendingTransition(R.anim.translate_up, R.anim.translate_up);
            }
        });
        ivUser = rootView.findViewById(R.id.fMain1_iv_uIconSummoner);
        ivTest = rootView.findViewById(R.id.fMain1_iv_m1Img);
        ivTest2 = rootView.findViewById(R.id.fMain1_iv_m2Img);
        ivTest3 = rootView.findViewById(R.id.fMain1_iv_m3Img);

        //Glide.with(this).load(R.drawable.test).apply(RequestOptions.bitmapTransform(new RoundedCorners(50))).into(ivTest2);
        //ivTest.setImageResource(R.drawable.emblem_bronze);
        Glide.with(this).load(R.drawable.ahri).circleCrop().into(ivUser);
        Glide.with(this).load(R.drawable.ahri).circleCrop().into(ivTest);
        Glide.with(this).load(R.drawable.ahri).circleCrop().into(ivTest2);
        Glide.with(this).load(R.drawable.ahri).circleCrop().into(ivTest3);

        return rootView;


        //return inflater.inflate(R.layout.fragment_main1, container, false);
    }
}