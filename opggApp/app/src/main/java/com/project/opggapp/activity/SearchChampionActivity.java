package com.project.opggapp.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

import com.project.opggapp.R;

public class SearchChampionActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search_champion);

//        ImageView btnClose = findViewById(R.id.setting_iv_close);
//        btnClose.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                finish();
//                overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
//            }
//        });
    }

    @Override
    public void onBackPressed() {
        finish();
        overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
    }
}