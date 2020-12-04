package com.project.opggapp;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;

public class SettingActivity extends AppCompatActivity {

    Switch stLog, stBattle, stOverWatch, stComm;
    LinearLayout llBug, llReview, llUse, llInfo, llAgree;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_setting);

        ImageView btnClose = findViewById(R.id.setting_iv_close);
        btnClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
            }
        });
    }

    @Override
    public void onBackPressed() {
        finish();
        overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
    }
}