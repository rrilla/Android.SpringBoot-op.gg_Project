package com.project.opggapp.listener;

import android.view.View;

import com.project.opggapp.adapter.BoardListAdapter;

public interface OnBoardListClickListener {
    public void onItemClick(BoardListAdapter.ViewHolder holder, View view, int position);
}
