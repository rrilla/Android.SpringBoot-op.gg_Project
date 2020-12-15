package com.project.opggapp.listener;

import android.view.View;

import com.project.opggapp.adapter.ChampionListAdapter;

public interface OnChampionListClickListener {
    public void onItemClick(ChampionListAdapter.ViewHolder holder, View view, int position);
}
