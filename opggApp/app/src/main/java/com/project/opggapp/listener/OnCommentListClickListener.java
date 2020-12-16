package com.project.opggapp.listener;

import android.view.View;

import com.project.opggapp.adapter.BoardListAdapter;
import com.project.opggapp.adapter.CommentListAdapter;

public interface OnCommentListClickListener {
    public void onItemClick(CommentListAdapter.ViewHolder holder, View view, int position);
}
