package com.project.opggapp.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.google.gson.Gson;
import com.project.opggapp.MainActivity;
import com.project.opggapp.R;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.task.RestAPIComm;

public class SplashActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

        //상태바 색상설정
        View view = getWindow().getDecorView();
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){
            if(view != null){
                view.setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
                getWindow().setStatusBarColor(Color.parseColor("#4C8CFF"));
            }
        }

        //
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
                finish();
            }
        },2 * 1000);    //3초

        //자동 로그인 검사
        SharedPreferences pref = getSharedPreferences("autoLogin", MODE_PRIVATE);
        String id = pref.getString("id", "");
        String pw = pref.getString("pw", "");
        if(!id.equals("") && !pw.equals("")){
            Log.d("SplashActivity","자동 로그인 실행");
            Gson gson = new Gson();
            LoginDto loginDto = new LoginDto();
            String[] result = new String[2];
            loginDto.setUsername(id);
            loginDto.setPassword(pw);
            RestAPIComm comm = new RestAPIComm();
            try {
                result = comm.execute("app/login", gson.toJson(loginDto)).get();
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(this, "서버 통신 오류", Toast.LENGTH_SHORT).show();
            }
            if(result[0].equals("ok")){
                SharedPreferences.Editor editor = pref.edit();
                editor.putString("severToken", result[1]);
                editor.commit();
                Toast.makeText(this, "로그인 성공", Toast.LENGTH_SHORT).show();
            }else{
                Toast.makeText(this, "로그인 실패", Toast.LENGTH_SHORT).show();
            }
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        finish();
    }
}