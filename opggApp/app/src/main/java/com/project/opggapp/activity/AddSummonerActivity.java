package com.project.opggapp.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.google.gson.Gson;
import com.project.opggapp.MainActivity;
import com.project.opggapp.R;
import com.project.opggapp.fragment.MainFragment1;
import com.project.opggapp.fragment.MainFragment2;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.task.RestAPIComm;

public class AddSummonerActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_summoner);

        LinearLayout llSuccess = findViewById(R.id.addSummoner_ll_success);
        llSuccess.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                EditText etSummoner = findViewById(R.id.addSummoner_et_summonerId);
                String inputSummoner = etSummoner.getText().toString();
                String result = checkSummoner(inputSummoner);
                if(result.equals("noSummoner")){
                    //없는 소환사
                    AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
                    builder.setMessage("'" + inputSummoner + "' 소환사가 존재하지 않습니다.");
                    builder.setPositiveButton("완료", null);
                    AlertDialog alertDialog = builder.create();
                    alertDialog.show();
                }else if(result.equals("ok")){
                    SharedPreferences pref = getSharedPreferences("history", MODE_PRIVATE);
                    SharedPreferences.Editor editor = pref.edit();
                    editor.putString("summoner", inputSummoner);
                    editor.commit();
                    Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                    startActivity(intent);
                    Toast.makeText(getApplicationContext(), "소환사 등록 성공.", Toast.LENGTH_SHORT).show();
                    finish();
                }else{
                    Toast.makeText(getApplicationContext(), "서버 에러", Toast.LENGTH_SHORT).show();
                }
            }
        });

        ImageView btnClose = findViewById(R.id.addSummoner_iv_close);
        btnClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
            }
        });
    }

    private String checkSummoner(String inputSummoner) {
        RestAPIComm comm = new RestAPIComm("app/summarySummoner?summoner="+inputSummoner);
        String[] result = new String[2];

        try {
            result = comm.execute().get();
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this, "서버 통신 실패", Toast.LENGTH_SHORT).show();
        }
        if(result[0].equals("ok")){
            if(result[1].equals("noSummoner")){
                return "noSummoner";
            }else{
                return "ok";
            }
        }else{
            Toast.makeText(this, "소환사 조회 실패 - " + result[1], Toast.LENGTH_SHORT).show();
            return "error";
        }
    }

    @Override
    public void onBackPressed() {
        finish();
        overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
    }
}