package com.project.opggapp.activity;


import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.project.opggapp.R;

public class SearchSummonerActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search_summoner);

        ImageView ivClose = findViewById(R.id.searchSummoner_iv_close);
        ivClose.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
            }
        });
        ImageButton ibSearch = findViewById(R.id.searchSummoner_ib_search);
        ibSearch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TextView tvSearch = findViewById(R.id.searchSummoner_et_input);
                Log.e("Search", tvSearch.getText().toString());
                if(tvSearch.getText().toString().equals("")){
                    AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
                    builder.setMessage("소환사 아이디를 입력해주세요.");
                    builder.setPositiveButton("완료", null);
                    AlertDialog alertDialog = builder.create();
                    alertDialog.show();
                }
                Intent intent = new Intent(getApplicationContext(), DetailSummonerActivity.class);
                intent.putExtra("detailSummoner", tvSearch.getText().toString());
                startActivity(intent);
            }
        });
    }

    @Override
    public void onBackPressed() {
        finish();
        overridePendingTransition(R.anim.translate_down, R.anim.translate_down);
    }
}