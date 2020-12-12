package com.project.opggapp.fragment;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.google.gson.Gson;
import com.project.opggapp.activity.AddSummonerActivity;
import com.project.opggapp.R;
import com.project.opggapp.activity.SearchSummonerActivity;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.task.RestAPIComm;

import static android.content.Context.MODE_PRIVATE;

public class MainFragment1 extends Fragment {

    private SharedPreferences pref;
    private String summoner = "";

    private ImageView ivAddSummoner, ivDeleteSummoner;
    private CardView userSummoner;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main1, container, false);
        ivAddSummoner = rootView.findViewById(R.id.fMain1_iv_addSummoner);
        userSummoner = rootView.findViewById(R.id.fMain1_cv_userSummoner);

        pref = getActivity().getSharedPreferences("history", MODE_PRIVATE);
        summoner = pref.getString("summoner", "");
        //summoner = "메돌이";

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
        RestAPIComm comm = new RestAPIComm();
        String[] result = new String[2];
        Gson gson = new Gson();
        try {
            result = comm.execute("app/summarySummoner", summoner).get();
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(getContext(), "서버 통신 실패", Toast.LENGTH_SHORT).show();
        }
        if(result[0].equals("ok")){
            Log.e("MainFragment1", "서버에서받은데이터 : " + result[1]);
            //Toast.makeText(getContext(), "소환사 조회 성공", Toast.LENGTH_SHORT).show();
        }else{
            Toast.makeText(getContext(), "소환사 조회 실패 - " + result[1], Toast.LENGTH_SHORT).show();
        }

        ivDeleteSummoner = rootView.findViewById(R.id.fMain1_iv_deleteUser);
        ImageView ivUser = rootView.findViewById(R.id.fMain1_iv_uIconSummoner);
        ImageView ivTest = rootView.findViewById(R.id.fMain1_iv_m1Img);

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

        //Glide.with(this).load(R.drawable.test).apply(RequestOptions.bitmapTransform(new RoundedCorners(50))).into(ivTest2);
        //ivTest.setImageResource(R.drawable.emblem_bronze);
        Glide.with(this).load(R.drawable.ahri).circleCrop().into(ivUser);
        Glide.with(this).load(R.drawable.ahri).circleCrop().into(ivTest);

        userSummoner.setVisibility(View.VISIBLE);
    }
}