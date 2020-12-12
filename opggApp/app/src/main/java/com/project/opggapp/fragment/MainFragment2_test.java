package com.project.opggapp.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;

import com.project.opggapp.R;
import com.project.opggapp.activity.LoginActivity;
import com.project.opggapp.activity.WritingActivity;

public class MainFragment2_test extends Fragment {

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

        return rootView;
        //return inflater.inflate(R.layout.fragment_main2, container, false);
    }

}