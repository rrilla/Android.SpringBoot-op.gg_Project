package com.project.opggapp;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationView;
import com.project.opggapp.fragment.MainFragment1;
import com.project.opggapp.fragment.MainFragment2;
import com.project.opggapp.fragment.MainFragment3;
import com.project.opggapp.fragment.MainFragment4;
import com.project.opggapp.fragment.MainFragment5;
import com.project.opggapp.fragment.NavFragment1;

public class MainActivity extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener {

    BottomNavigationView bottomNavigationView;
    LinearLayout linearLayout;
    DrawerLayout drawer;
    Toolbar toolbar;

    Fragment mFrag1 = null;
    Fragment mFrag2 = null;
    Fragment mFrag3 = null;
    Fragment mFrag4 = null;
    Fragment mFrag5 = null;

    TextView tText;
    Button btnLogin;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        //툴바
        toolbar = findViewById(R.id.toolbar);
        tText = (TextView) toolbar.findViewById(R.id.toolbar_text);
        setSupportActionBar(toolbar);


        //리니어 레이아웃
        linearLayout = findViewById(R.id.linearLayout);
        mFrag1 = new MainFragment1();
        getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag1).commit();


        //드로어 레이아웃
        drawer = findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();


        //네비게이션 뷰
        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);
        //네비뷰 설정
        View header = navigationView.getHeaderView(0);

        //Button btnLogout = header.findViewById(R.id.navHeader_btn_logout);
        btnLogin = header.findViewById(R.id.navHeader_btn_login);
        btnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                //intent.putExtra("jwtToken", jwtToken);
                startActivity(intent);
                overridePendingTransition(R.anim.translate_up, R.anim.translate_up);
                drawer.closeDrawer(GravityCompat.START);

//                getSupportFragmentManager().beginTransaction()
//                        .setCustomAnimations(R.anim.enter_from_right, R.anim.exit_to_left, R.anim.enter_from_left,R.anim.exit_to_right)
//                        .addToBackStack(null)   //뒤로가기시 이전 화면
//                        .replace(R.id.drawer_layout, new NavFragment1()).commit();
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

                        getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag1).commit();
                        return true;

                    case R.id.tab2:
                        tText.setText("커뮤니티");
                        toolbar.getMenu().findItem(R.id.appbar_fragment1).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment2).setVisible(true);
                        toolbar.getMenu().findItem(R.id.appbar_fragment3).setVisible(false);

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
                    case R.id.tab5:
                        tText.setText("프로관전");
                        toolbar.getMenu().findItem(R.id.appbar_fragment1).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment2).setVisible(false);
                        toolbar.getMenu().findItem(R.id.appbar_fragment3).setVisible(false);

                        if(mFrag5 == null){
                            mFrag5 = new MainFragment5();
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag5).commit();
                            Log.e("test", "생성");
                            return true;
                        }else{
                            getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout, mFrag5).commit();
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

    //네비게이션 메뉴의 아이템 선택시 - 인텐트 액티비티 이동, 페이지 이동 구현
    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
//        int id = item.getItemId();
//
//        if (id == R.id.nav_menu1) {
//            Intent intent = new Intent(getApplicationContext(), MainActivity.class);
//            intent.putExtra("jwtToken", jwtToken);
//            startActivity(intent);
//        } else if (id == R.id.nav_menu2) {
//            if(loginUser.getTeams() != null){
//                Intent intent = new Intent(getApplicationContext(), TeamDetailActivity.class);
//                intent.putExtra("jwtToken", jwtToken);
//                intent.putExtra("loginUser", loginUser);
//                intent.putExtra("selectTeam", loginUser.getTeams());
//                startActivity(intent);
//            }else{
//                Intent intent = new Intent(getApplicationContext(), TeamCreateActivity.class);
//                intent.putExtra("jwtToken", jwtToken);
//                intent.putExtra("loginUser", loginUser);
//                startActivity(intent);
//            }
//        }
//        drawer.closeDrawer(GravityCompat.START);
//        return true;
        return false;
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