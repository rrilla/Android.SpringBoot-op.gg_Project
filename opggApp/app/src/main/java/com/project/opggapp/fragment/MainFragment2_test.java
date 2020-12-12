package com.project.opggapp.fragment;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.project.opggapp.R;
import com.project.opggapp.activity.DetailBoardActivity;
import com.project.opggapp.activity.LoginActivity;
import com.project.opggapp.activity.WritingActivity;
import com.project.opggapp.adapter.BoardListAdapter;
import com.project.opggapp.listener.OnBoardListClickListener;
import com.project.opggapp.model.Board;
import com.project.opggapp.task.RestAPIComm;

import java.util.ArrayList;

public class MainFragment2_test extends Fragment {

    RecyclerView recyclerView;
    BoardListAdapter adapter;

    ArrayList<Board> boardList;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        String[] result = new String[2];
        RestAPIComm comm = new RestAPIComm();
        Gson gson = new Gson();
        try {
            result = comm.execute("app/boardList").get();
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(getContext(), "서버 통신 실패", Toast.LENGTH_SHORT).show();
        }
        if(result[0].equals("ok")){
            boardList = gson.fromJson(result[1], new TypeToken<ArrayList<Board>>() {}.getType());
        }else{
            Toast.makeText(getContext(), "서버 에러 - " + result[1], Toast.LENGTH_SHORT).show();
        }

        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main2_test, container, false);
        Toolbar toolbar = rootView.findViewById(R.id.fMain2_toolbar);
        toolbar.getMenu().findItem(R.id.appbar_write).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(MenuItem menuItem) {
                Log.e("MainFragment2_test", "글쓰기 클릭됨");
                Intent intent = new Intent(getContext(), WritingActivity.class);
                startActivity(intent);
                return true;
            }
        });

        recyclerView = rootView.findViewById(R.id.recyclerView);
        //리사이클러뷰에 설정할 레이아웃 매니저 - 방향세로로 설정함.
        LinearLayoutManager layoutManager = new LinearLayoutManager(getActivity(), LinearLayoutManager.VERTICAL, false);
        recyclerView.setLayoutManager(layoutManager);

        adapter = new BoardListAdapter();
        adapter.setItems(boardList);
        Log.d("MainFragment2","boardList갯수(어댑터관리 아이템수) : " + adapter.getItemCount());

        recyclerView.setAdapter(adapter);

        adapter.setOnItemClickListener(new OnBoardListClickListener() {
            @Override
            public void onItemClick(BoardListAdapter.ViewHolder holder, View view, int position) {
                Board item = adapter.getItem(position);
                Toast.makeText(getContext(), item.getBno() + " 번 글 클릭됨", Toast.LENGTH_SHORT).show();
//                Intent intent = new Intent(getContext(), DetailBoardActivity.class);
//                intent.putExtra("loginUser", loginUser);
//                intent.putExtra("selectTeam", item);
//                startActivity(intent);
            }
        });

        return rootView;
        //return inflater.inflate(R.layout.fragment_main2, container, false);
    }

}