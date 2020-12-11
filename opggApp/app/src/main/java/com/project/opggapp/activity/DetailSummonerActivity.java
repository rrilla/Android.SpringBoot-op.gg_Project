package com.project.opggapp.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import com.project.opggapp.R;

public class DetailSummonerActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_summoner);

        Intent intent = getIntent();
        String detailSummoner = intent.getStringExtra("detailSummoner");
        //selectBattle = (Battle)intent.getSerializableExtra("selectBattle");
        //role = intent.getIntExtra("role", 0);

        //검색 or 클릭시 받은 아이디로 서버통신으로 소환사 상제정보가져오기
        try {

        }catch (Exception e){
            Toast.makeText(this, "서버 통신 오류", Toast.LENGTH_SHORT).show();
            e.printStackTrace();
        }

        // if 검색 결과없을시 '존재하지앟는 소환사 리턴'
    }
}