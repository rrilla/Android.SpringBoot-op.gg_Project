package com.project.opggapp.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.Toast;

import androidx.appcompat.app.ActionBar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;

import com.google.android.material.tabs.TabLayout;
import com.google.gson.Gson;
import com.project.opggapp.R;
import com.project.opggapp.adapter.ChampionListAdapter;
import com.project.opggapp.adapter.ViewPagerAdapter;
import com.project.opggapp.listener.OnChampionListClickListener;
import com.project.opggapp.model.Champion;
import com.project.opggapp.model.dto.ChampionDto;
import com.project.opggapp.model.dto.LoginDto;
import com.project.opggapp.model.dto.MyInfo;
import com.project.opggapp.task.RestAPIComm;

import java.util.ArrayList;

public class MainFragment3 extends Fragment {

    private RecyclerView recyclerView;
    private ChampionListAdapter adapter;
    private TabLayout tabs;
    TabLayout.Tab tab1;

    private ChampionDto championDto = null;
    private String[] result = new String[2];
    private Gson gson = new Gson();

    RadioButton rbTier, rbWin, rbPick, rbBan;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main3, container, false);

        rbTier = rootView.findViewById(R.id.fMain3_rb_tier);
        rbWin = rootView.findViewById(R.id.fMain3_rb_win);
        rbPick = rootView.findViewById(R.id.fMain3_rb_pick);
        rbBan = rootView.findViewById(R.id.fMain3_rb_ban);

        changeDate("tier");

        if(championDto == null){
            return rootView;
        }

        recyclerView = rootView.findViewById(R.id.recyclerView);
        //리사이클러뷰에 설정할 레이아웃 매니저 - 방향세로로 설정함.
        LinearLayoutManager layoutManager = new LinearLayoutManager(getActivity(), LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        adapter = new ChampionListAdapter();
        adapter.setItems((ArrayList<Champion>) championDto.getTopList());
        Log.e("MainFragment4","챔피언 리스트 어댑터 관리 수 : " + adapter.getItemCount());

        recyclerView.setAdapter(adapter);

        adapter.setOnItemClickListener(new OnChampionListClickListener() {
            @Override
            public void onItemClick(ChampionListAdapter.ViewHolder holder, View view, int position) {
                Champion item = adapter.getItem(position);
                Toast.makeText(getContext(), "클릭됨. - " + item.getEnglishName(), Toast.LENGTH_SHORT).show();
//                Team item = adapter.getItem(position);
//
//                Intent intent = new Intent(getContext(), TeamDetailActivity.class);
//                intent.putExtra("jwtToken", jwtToken);
//                intent.putExtra("loginUser", loginUser);
//                intent.putExtra("selectTeam", item);
//                startActivity(intent);
            }
        });

        //상단 탭 네비
        tabs = rootView.findViewById(R.id.tab_layout);
        tab1 = tabs.newTab() ;
        tab1.setText("탑");
        tabs.addTab(tab1);
        tabs.addTab(tabs.newTab().setText("정글"));
        tabs.addTab(tabs.newTab().setText("미드"));
        tabs.addTab(tabs.newTab().setText("바텀"));
        tabs.addTab(tabs.newTab().setText("서폿"));
        tabs.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();
                if(position == 0){
                    adapter.deleteItem();
                    adapter.setItems((ArrayList<Champion>) championDto.getTopList());
                    recyclerView.setAdapter(adapter);
                }else if(position == 1){
                    adapter.deleteItem();
                    adapter.setItems((ArrayList<Champion>) championDto.getJungleList());
                    recyclerView.setAdapter(adapter);
                }else if(position == 2){
                    adapter.deleteItem();
                    adapter.setItems((ArrayList<Champion>) championDto.getMidList());
                    recyclerView.setAdapter(adapter);
                }else if(position == 3){
                    adapter.deleteItem();
                    adapter.setItems((ArrayList<Champion>) championDto.getBottomList());
                    recyclerView.setAdapter(adapter);
                }else if(position == 4){
                    adapter.deleteItem();
                    adapter.setItems((ArrayList<Champion>) championDto.getSupList());
                    recyclerView.setAdapter(adapter);
                }
                //getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.fMain3_ll_container, fragment).commit();
            }
            @Override
            public void onTabUnselected(TabLayout.Tab tab) {}
            @Override
            public void onTabReselected(TabLayout.Tab tab) {}
        });

        rbTier.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.e("asfd","실행됨");
                changeDate("tier");
                adapter.deleteItem();
                adapter.setItems((ArrayList<Champion>) championDto.getTopList());
                recyclerView.setAdapter(adapter);
                tabs.selectTab(tab1);
            }
        });

        rbWin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                changeDate("win");
                adapter.deleteItem();
                adapter.setItems((ArrayList<Champion>) championDto.getTopList());
                recyclerView.setAdapter(adapter);
                tabs.selectTab(tab1);
            }
        });

        rbPick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                changeDate("pick");
                adapter.deleteItem();
                adapter.setItems((ArrayList<Champion>) championDto.getTopList());
                recyclerView.setAdapter(adapter);
                tabs.selectTab(tab1);
            }
        });

        rbBan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                changeDate("ban");
                adapter.deleteItem();
                adapter.setItems((ArrayList<Champion>) championDto.getTopList());
                recyclerView.setAdapter(adapter);
                tabs.selectTab(tab1);
            }
        });

        return rootView;
        //return inflater.inflate(R.layout.fragment_main3, container, false);
    }

    private void changeDate(String orderBy) {
        RestAPIComm comm = new RestAPIComm("app/championList?orderBy=" + orderBy);
        try {
            result = comm.execute().get();
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(getContext(), "서버 통신 실패", Toast.LENGTH_SHORT).show();
        }
        if(result[0].equals("ok")){
            championDto = gson.fromJson(result[1], ChampionDto.class);
        }else{
            Toast.makeText(getContext(), "기능 실패 - " + result[1], Toast.LENGTH_SHORT).show();
        }
    }
}