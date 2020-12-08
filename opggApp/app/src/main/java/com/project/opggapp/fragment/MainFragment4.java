package com.project.opggapp.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;

import com.project.opggapp.R;

public class MainFragment4 extends Fragment {

    TextView tab1, tab2, tab3;
    Fragment raking = null;
    Fragment champion = null;
    Fragment level = null;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_main4, container, false);

        raking = new MainFragment4_Raking();
        getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout2, raking).commit();

        tab1 = rootView.findViewById(R.id.fMain4_raking_tab1);
        tab2 = rootView.findViewById(R.id.fMain4_raking_tab2);
        tab3 = rootView.findViewById(R.id.fMain4_raking_tab3);

        tab1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                tab1.setTextColor(Color.WHITE);
                tab1.setBackgroundColor(Color.parseColor("#5586EB"));

                tab2.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.textview_edge));
                tab3.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.textview_edge));
                tab2.setText("챔피언");
                tab2.setTextColor(Color.parseColor("#808080"));
                tab3.setText("레벨");
                tab3.setTextColor(Color.parseColor("#808080"));

                getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout2, raking).commit();
            }
        });

        tab2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                tab2.setTextColor(Color.WHITE);
                tab2.setBackgroundColor(Color.parseColor("#5586EB"));

                tab1.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.textview_edge));
                tab3.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.textview_edge));
                tab1.setText("랭킹");
                tab1.setTextColor(Color.parseColor("#808080"));
                tab3.setText("레벨");
                tab3.setTextColor(Color.parseColor("#808080"));

                if(champion == null){
                    champion = new MainFragment4_Champion();
                    getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout2, champion).commit();
                    Log.e("test", "champion 프래그먼트 생성");
                }else{
                    getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout2, champion).commit();
                    Log.e("test", "champion 프래그먼트 재사용");
                }
            }
        });

        tab3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                tab3.setTextColor(Color.WHITE);
                tab3.setBackgroundColor(Color.parseColor("#5586EB"));

                tab1.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.textview_edge));
                tab2.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.textview_edge));
                tab1.setText("랭킹");
                tab1.setTextColor(Color.parseColor("#808080"));
                tab2.setText("챔피언");
                tab2.setTextColor(Color.parseColor("#808080"));

                if(level == null){
                    level = new MainFragment4_Level();
                    getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout2, level).commit();
                    Log.e("test", "level 프래그먼트 생성");
                }else{
                    getActivity().getSupportFragmentManager().beginTransaction().replace(R.id.linearLayout2, level).commit();
                    Log.e("test", "level 프래그먼트 재사용");
                }
            }
        });

        return rootView;
        //return inflater.inflate(R.layout.fragment_main4, container, false);
    }
}