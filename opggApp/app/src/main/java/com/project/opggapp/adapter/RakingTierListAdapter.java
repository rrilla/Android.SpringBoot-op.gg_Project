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
import com.project.opggapp.model.Board;
import com.project.opggapp.model.RankData;
import com.project.opggapp.task.IP;

import java.util.ArrayList;

public class RakingTierListAdapter extends RecyclerView.Adapter<RakingTierListAdapter.ViewHolder> {

    ArrayList<RankData> items = new ArrayList<RankData>();
    View.OnClickListener listener;
    int rank = 5;

    @NonNull
    @Override
    public RakingTierListAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.item_mainfragment4_raking, viewGroup, false);

        rank+=1;
        return new RakingTierListAdapter.ViewHolder(itemView, listener, rank);
    }

    @Override
    public void onBindViewHolder(@NonNull RakingTierListAdapter.ViewHolder viewHolder, int position) {
        RankData item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(RankData item) {
        items.add(item);
    }

    public void setItems(ArrayList<RankData> items) {
        this.items = items;
    }

    public RankData getItem(int position) {
        return items.get(position);
    }

    public void setItem(int position, RankData item) {
        items.set(position, item);
    }

    public void setOnItemClickListener(View.OnClickListener listener) {
        this.listener = listener;
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView tvName, tvPoint, tvRaking;
        ImageView ivImage, ivTier;
        View view;
        int rank;

        public ViewHolder(View itemView, final View.OnClickListener listener, int rank) {
            super(itemView);
            this.view = itemView;
            this.rank = rank;

            tvName = itemView.findViewById(R.id.iRakingTier_tv_name);
            tvPoint = itemView.findViewById(R.id.iRakingTier_tv_point);
            tvRaking = itemView.findViewById(R.id.iRakingTier_tv_raking);
            ivTier = itemView.findViewById(R.id.iRakingTier_iv_tier);
            ivImage = itemView.findViewById(R.id.iRakingTier_iv_image);
            itemView.setOnClickListener(listener);
        }

        public void setItem(RankData item) {
            tvName.setText(item.getSummonerName());
            tvPoint.setText(item.getPoint() + " LP");
            tvRaking.setText(rank + "");
            Glide.with(view).load(IP.urlProfile + item.getProfileIconId()+".png").circleCrop().into(ivImage);
            if(item.getTier().equals("CHALLENGER")){
                ivTier.setImageResource(R.drawable.emblem_challenger);
            }else if(item.getTier().equals("GRANDMASTER")){
                ivTier.setImageResource(R.drawable.emblem_grandmaster);
            }else if(item.getTier().equals("MASTER")){
                ivTier.setImageResource(R.drawable.emblem_master);
            }
        }

    }
}
