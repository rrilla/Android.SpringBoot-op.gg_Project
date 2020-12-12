package com.project.opggapp.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.TextView;

import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.project.opggapp.R;
import com.project.opggapp.activity.LoginActivity;
import com.project.opggapp.activity.WritingActivity;

public class MainFragment2_test extends Fragment {

    RecyclerView recyclerView;
    adapter;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main2_test, container, false);
        Toolbar toolbar = rootView.findViewById(R.id.fMain2_toolbar);
        toolbar.getMenu().findItem(R.id.appbar_write).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(MenuItem menuItem) {
                Log.e("MainFragment2_text", "글쓰기 클릭됨");
                Intent intent = new Intent(getContext(), WritingActivity.class);
                startActivity(intent);
                return true;
            }
        });

        recyclerView = rootView.findViewById(R.id.recyclerView);
        //리사이클러뷰에 설정할 레이아웃 매니저 - 방향세로로 설정함.
        LinearLayoutManager layoutManager = new LinearLayoutManager(getActivity(), LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        adapter = new TeamListAdapter();
        adapter.setItems(teams);
        Log.e("test어댑터관리 아이템개수",":"+adapter.getItemCount());

        recyclerView.setAdapter(adapter);

        adapter.setOnItemClickListener(new OnTeamItemClickListener() {
            @Override
            public void onItemClick(TeamListAdapter.ViewHolder holder, View view, int position) {
                Team item = adapter.getItem(position);

                Intent intent = new Intent(getContext(), TeamDetailActivity.class);
                intent.putExtra("jwtToken", jwtToken);
                intent.putExtra("loginUser", loginUser);
                intent.putExtra("selectTeam", item);
                startActivity(intent);
            }
        });


        return rootView;
        //return inflater.inflate(R.layout.fragment_main2, container, false);
    }

}