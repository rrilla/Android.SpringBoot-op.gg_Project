package com.project.opggapp.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import com.google.gson.Gson;
import com.project.opggapp.R;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.task.RestAPIComm;

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
        RestAPIComm comm = new RestAPIComm("app/detailSummoner?summoner="+detailSummoner);
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
            Toast.makeText(this, "기능 성공", Toast.LENGTH_SHORT).show();
        }else{
            Toast.makeText(this, "기능 실패 - " + result[1], Toast.LENGTH_SHORT).show();
        }
    }
}