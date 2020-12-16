package com.project.opggapp.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.project.opggapp.R;
import com.project.opggapp.listener.OnBoardListClickListener;
import com.project.opggapp.listener.OnCommentListClickListener;
import com.project.opggapp.model.Board;
import com.project.opggapp.model.Comment;

import java.util.ArrayList;

public class CommentListAdapter extends RecyclerView.Adapter<CommentListAdapter.ViewHolder>
        implements OnCommentListClickListener {
    ArrayList<Comment> items = new ArrayList<Comment>();

    OnCommentListClickListener listener;

    @NonNull
    @Override
    public CommentListAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.item_board_comment, viewGroup, false);

        return new CommentListAdapter.ViewHolder(itemView, this);
    }

    @Override
    public void onBindViewHolder(@NonNull CommentListAdapter.ViewHolder viewHolder, int position) {
        Comment item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(Comment item) {
        items.add(item);
    }

    public void setItems(ArrayList<Comment> items) {
        this.items = items;
    }

    public Comment getItem(int position) {
        return items.get(position);
    }

    public void setItem(int position, Comment item) {
        items.set(position, item);
    }

    public void setOnItemClickListener(OnCommentListClickListener listener) {
        this.listener = listener;
    }

    @Override
    public void onItemClick(CommentListAdapter.ViewHolder holder, View view, int position) {
        if (listener != null) {
            listener.onItemClick(holder, view, position);
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView tvContent, tvWriter, tvDate;
        View view;

        public ViewHolder(View itemView, final OnCommentListClickListener listener) {
            super(itemView);
            this.view = itemView;

            tvWriter = itemView.findViewById(R.id.iComment_tv_writer);
            tvDate = itemView.findViewById(R.id.iComment_tv_dateWrite);
            tvContent = itemView.findViewById(R.id.iComment_tv_content);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    int position = getAdapterPosition();
                    if (listener != null) {
                        listener.onItemClick(ViewHolder.this, view, position);
                    }
                }
            });
        }

        public void setItem(Comment item) {
            tvDate.setText(item.getDate());
            if(item.getUser() != null) {
                tvWriter.setText(item.getUser().getNickname());
            }
            tvContent.setText(item.getContent());
        }

    }
}
