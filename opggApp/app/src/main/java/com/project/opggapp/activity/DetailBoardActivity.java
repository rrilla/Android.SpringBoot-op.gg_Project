package com.project.opggapp.activity;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import android.widget.Toast;

import com.project.opggapp.R;
import com.project.opggapp.adapter.BoardListAdapter;
import com.project.opggapp.adapter.CommentListAdapter;
import com.project.opggapp.listener.OnBoardListClickListener;
import com.project.opggapp.listener.OnCommentListClickListener;
import com.project.opggapp.model.Board;
import com.project.opggapp.model.Comment;
import com.project.opggapp.model.User;

import java.util.ArrayList;

public class DetailBoardActivity extends AppCompatActivity {

    private Board selectBoard;

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_board);

        Intent intent = getIntent();
        selectBoard = (Board)intent.getSerializableExtra("selectBoard");
        //Log.e("DetailBoardActivity", "선택한 글 데이터 : " + selectBoard);
        String boardContent = selectBoard.getContent().replace("/summer", "http://10.0.2.2:8000/summer");

        //툴바
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        TextView tvTitle = findViewById(R.id.detailBoard_tv_title);
        TextView tvDateWrite = findViewById(R.id.detailBoard_tv_dateWrite);
        TextView tvWriterNickname = findViewById(R.id.detailBoard_tv_writerNickname);
        TextView tvCountView = findViewById(R.id.detailBoard_tv_countView);
        TextView tvCountComment = findViewById(R.id.detailBoard_tv_countComment);
        TextView tvCountComment2 = findViewById(R.id.detailBoard_tv_countComment2);
        TextView tvCountLike = findViewById(R.id.detailBoard_tv_countLike);
        tvTitle.setText(selectBoard.getTitle());
        tvDateWrite.setText(selectBoard.getDate() + "　|　");
        tvWriterNickname.setText(selectBoard.getUser().getNickname());
        //tvCountView.setText();
        //tvCountComment.setText();
        //tvCountComment2.setText();
        //tvCountLike.setText();


        //WebView셋팅 시작
        WebView web = findViewById(R.id.detailBoard_wv_container);
        //http이미지 못가올때 세팅
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            web.getSettings().setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        }
        //자바스크립트 허용
        web.getSettings().setJavaScriptEnabled(true);
        //web.setWebViewClient(new WebViewClient());
        //스크롤바 없애기
//        web.setHorizontalScrollBarEnabled(true);
//        web.setVerticalScrollBarEnabled(false);
//        web.setBackgroundColor(0);  //흰색
        web.loadData(boardContent, "text/html", "UTF-8");
        //WebView셋팅 끝


//        RecyclerView recyclerView = findViewById(R.id.recyclerView);
//        //리사이클러뷰에 설정할 레이아웃 매니저 - 방향세로로 설정함.
//        LinearLayoutManager layoutManager = new LinearLayoutManager(this, LinearLayoutManager.VERTICAL, false);
//        recyclerView.setLayoutManager(layoutManager);
//        CommentListAdapter adapter = new CommentListAdapter();
//        adapter.setItems((ArrayList<Comment>) selectBoard.getComments());
//        Log.d("DetailBoardActivity","Comment List갯수(어댑터관리 아이템수) : " + adapter.getItemCount());
//
//        recyclerView.setAdapter(adapter);

    }

//    @Override
//    public void onLowMemory() {
//        Log.d("TAG_MEMORY", "Memory is Low");
//        super.onLowMemory();
//    }

    //앱바 메뉴 인플레이션
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true); // 뒤로가기 버튼, 디폴트로 true만 해도 백버튼이 생김
        return true;
    }

    //앱바 뒤로가기 설정
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()){
            case android.R.id.home:{ //toolbar의 back키 눌렀을 때 동작
                finish();
                return true;
            }
        }
        return super.onOptionsItemSelected(item);
    }
}