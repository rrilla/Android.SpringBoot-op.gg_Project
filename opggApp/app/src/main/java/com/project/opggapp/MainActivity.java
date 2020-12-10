package com.project.opggapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.gson.Gson;
import com.project.opggapp.fragment.MainFragment1;
import com.project.opggapp.fragment.MainFragment2;
import com.project.opggapp.fragment.MainFragment3;
import com.project.opggapp.fragment.MainFragment4;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.task.RestAPIComm;

import java.util.concurrent.ExecutionException;

public class MainActivity extends AppCompatActivity {

    BottomNavigationView bottomNavigationView;
    LinearLayout linearLayout;
    DrawerLayout drawer;
    Toolbar toolbar;

    Fragment mFrag1 = null;
    Fragment mFrag2 = null;
    Fragment mFrag3 = null;
    Fragment mFrag4 = null;

    LinearLayout linearLayout2;
    TextView tText;

    private SharedPreferences pref;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //로그인 검사
        pref = getSharedPreferences("autoLogin", MODE_PRIVATE);
        String id = pref.getString("id", "");
        String pw = pref.getString("pw", "");
        Log.d("MainActivity","저장된id : " + id);
        Log.d("MainActivity", "저장된pw : " + pw);
        if(!id.equals("") && !pw.equals("")){
            Log.d("MainActivity","자동 로그인 실행");
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


        //툴바
        toolbar = findViewById(R.id.toolbar);
        tText = (TextView) toolbar.findViewById(R.id.toolbar_text);
        setSupportActionBar(toolbar);


        //리니어 레이아웃
        linearLayout = findViewById(R.id.linearLayout);
        linearLayout2 = findViewById(R.id.linearLayout2);
        mFrag1 = new MainFragment1();
        getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag1).commit();


        //드로어 레이아웃
        drawer = findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();


        //네비게이션 뷰
        View navigationView = findViewById(R.id.navigation);
        ImageView ivUser = navigationView.findViewById(R.id.nav_iv_user);
        ImageView ivSetting = navigationView.findViewById(R.id.nav_iv_setting);
        ivUser.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                //intent.putExtra("severToken", severToken);
                startActivity(intent);
                overridePendingTransition(R.anim.translate_up, R.anim.translate_up);
            }
        });
        ivSetting.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), SettingActivity.class);
                startActivity(intent);
                overridePendingTransition(R.anim.translate_up, R.anim.translate_up);
            }
        });


        //하단 탭 네비
        bottomNavigationView = findViewById(R.id.bottom_navigation);
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                switch (item.getItemId()){
                    case R.id.tab1:
                        tText.setText("리그오브레전드");
                        toolbar.getMenu().findItem(R.id.appbar_fragment1).setVisible(true);
                        toolbar.getMenu().findItem(R.id.appbar_fragment2).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment3).setVisible(false);
                        linearLayout2.setVisibility(View.GONE);

                        FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
                        fragmentTransaction.replace(R.id.linearLayout, mFrag1).commit();
                        //fragmentTransaction.detach() replace(R.id.linearLayout2, null).commit();
                        return true;

                    case R.id.tab2:
                        tText.setText("커뮤니티");
                        toolbar.getMenu().findItem(R.id.appbar_fragment1).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment2).setVisible(true);
                        toolbar.getMenu().findItem(R.id.appbar_fragment3).setVisible(false);
                        linearLayout2.setVisibility(View.GONE);

                        if(mFrag2 == null){
                            mFrag2 = new MainFragment2();
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag2).commit();
                            Log.e("test", "생성");
                            return true;
                        }else{
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag2).commit();
                            Log.e("test", "재사용");
                            return true;
                        }

                    case R.id.tab3:
                        tText.setText("챔피언 분석");
                        toolbar.getMenu().findItem(R.id.appbar_fragment1).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment2).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment3).setVisible(true);
                        linearLayout2.setVisibility(View.GONE);

                        if(mFrag3 == null){
                            mFrag3 = new MainFragment3();
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag3).commit();
                            Log.e("test", "생성");
                            return true;
                        }else{
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag3).commit();
                            Log.e("test", "재사용");
                            return true;
                        }
                    case R.id.tab4:
                        tText.setText("랭킹");
                        toolbar.getMenu().findItem(R.id.appbar_fragment1).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment2).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment3).setVisible(false);
                        linearLayout2.setVisibility(View.VISIBLE);

                        if(mFrag4 == null){
                            mFrag4 = new MainFragment4();
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag4).commit();
                            Log.e("test", "생성");
                            return true;
                        }else{
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag4).commit();
                            Log.e("test", "재사용");
                            return true;
                        }
                }
                return false;
            }
        });
    }

    //앱바 메뉴의 아이템 선택시 -
//    @Override
//    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
//        int curId = item.getItemId();
//        switch (curId) {
//            case R.id.appbar_search:
//                Intent intent = new Intent(getApplicationContext(), PartyListActivity.class);
//                intent.putExtra("jwtToken", jwtToken);
//                intent.putExtra("loginUser", loginUser);
//                startActivity(intent);
//                break;
//            case R.id.appbar_info:
//                Intent intent2 = new Intent(getApplicationContext(), MyPageActivity.class);
//                intent2.putExtra("jwtToken", jwtToken);
//                intent2.putExtra("loginUser", loginUser);
//                startActivity(intent2);
//                break;
//            default:
//                break;
//        }
//        return super.onOptionsItemSelected(item);
//    }

    //앱바 메뉴 인플레이션
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.appbar_menu, menu);
        tText.setText("리그오브레전드");
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        return true;
    }


    //뒤로가기 때 호출 - 네비창 닫기
    @Override
    public void onBackPressed() {
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }
}