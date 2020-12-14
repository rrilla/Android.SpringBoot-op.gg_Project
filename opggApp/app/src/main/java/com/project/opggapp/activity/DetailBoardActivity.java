package com.project.opggapp.activity;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

import com.project.opggapp.R;
import com.project.opggapp.model.Board;
import com.project.opggapp.model.User;

public class DetailBoardActivity extends AppCompatActivity {

    private Board selectBoard;

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_board);

        Intent intent = getIntent();
        selectBoard = (Board)intent.getSerializableExtra("selectBoard");
        Log.e("DetailBoardActivity", "선택한 글 데이터 : " + selectBoard);

        String realData = selectBoard.getContent().replace("/summer", "http://10.0.2.2:8000/summer");
        WebView web = findViewById(R.id.web);

        //http이미지 못가올때 세팅
            web.getSettings().setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        //자바스크립트 허용
        web.getSettings().setJavaScriptEnabled(true);
        //web.setWebViewClient(new WebViewClient());

        //스크롤바 없애기
//        web.setHorizontalScrollBarEnabled(true);
//        web.setVerticalScrollBarEnabled(false);
//        web.setBackgroundColor(0);  //흰색

        String data = "<p>asdf<img src='http://10.0.2.2:8000/summernoteShowImage/7bb25f48-6fd0-401d-91d9-89d7af7d8e78.jpg' style='width: 100px;'>";

        web.loadData(realData, "text/html", "UTF-8");

//        WebView web2 = findViewById(R.id.web2);
//        web2.getSettings().setJavaScriptEnabled(true);
//        web2.setWebViewClient(new WebViewClient());
//        //스크롤바 없애기
//        web2.setHorizontalScrollBarEnabled(true);
//        web2.setVerticalScrollBarEnabled(false);
//        web2.setBackgroundColor(0);  //흰색
//        web2.loadUrl("https://www.op.gg/");

//        TextView tvTest = findViewById(R.id.test);
//        tvTest.setText(Html.fromHtml(data));
    }

//    @Override
//    public void onLowMemory() {
//        Log.d("TAG_MEMORY", "Memory is Low");
//        super.onLowMemory();
//    }
}