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
import com.project.opggapp.model.Board;

import java.util.ArrayList;

public class BoardListAdapter2 extends RecyclerView.Adapter<BoardListAdapter2.ViewHolder2> {

    ArrayList<Board> items = new ArrayList<Board>();
    private View.OnClickListener listener;

    @NonNull
    @Override
    public BoardListAdapter2.ViewHolder2 onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.item_mainfragment2_board, viewGroup, false);

        return new BoardListAdapter2.ViewHolder2(itemView, listener);
    }

    @Override
    public void onBindViewHolder(@NonNull BoardListAdapter2.ViewHolder2 viewHolder, int position) {
        Board item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(Board item) {
        items.add(item);
    }

    public void setItems(ArrayList<Board> items) {
        this.items = items;
    }

    public Board getItem(int position) {
        return items.get(position);
    }

    public void setItem(int position, Board item) {
        items.set(position, item);
    }

    public void setOnItemClickListener(View.OnClickListener listener) {
        this.listener = listener;
    }

    public static class ViewHolder2 extends RecyclerView.ViewHolder {
        TextView tvTitle, tvWriter;
        ImageView ivWriterImage, ivThumbnail;
        View view;

        public ViewHolder2(View itemView, View.OnClickListener listener) {
            super(itemView);
            this.view = itemView;

            tvTitle = itemView.findViewById(R.id.iBoard_tv_title);
            tvWriter = itemView.findViewById(R.id.iBoard_tv_writer);
            ivWriterImage = itemView.findViewById(R.id.iBoard_iv_writerImage);
            ivThumbnail = itemView.findViewById(R.id.iBoard_iv_thumbnail);

            itemView.setOnClickListener(listener);
        }

        public void setItem(Board item) {
            tvTitle.setText(item.getTitle());
            tvWriter.setText(item.getUser().getNickname());
            if(item.getThumbnail() != null){
                Glide.with(view).load(item.getUrlThumbnail()).override(300,300).into(ivThumbnail);
            }
            //Glide.with(view).load(item.getUser().getImage()).into(ivWriterImage);
        }

    }
}
