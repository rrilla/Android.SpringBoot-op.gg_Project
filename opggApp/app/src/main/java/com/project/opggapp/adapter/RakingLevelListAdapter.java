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
import com.project.opggapp.model.RankData;
import com.project.opggapp.task.IP;

import java.util.ArrayList;

public class RakingLevelListAdapter extends RecyclerView.Adapter<RakingLevelListAdapter.ViewHolder> {

    ArrayList<RankData> items = new ArrayList<RankData>();
    View.OnClickListener listener;
    int rank = 5;

    @NonNull
    @Override
    public RakingLevelListAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.item_mainfragment4_level, viewGroup, false);

        rank+=1;
        return new RakingLevelListAdapter.ViewHolder(itemView, listener, rank);
    }

    @Override
    public void onBindViewHolder(@NonNull RakingLevelListAdapter.ViewHolder viewHolder, int position) {
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
        TextView tvName, tvLevel, tvRaking;
        ImageView ivImage, ivTier;
        View view;
        int rank;

        public ViewHolder(View itemView, final View.OnClickListener listener, int rank) {
            super(itemView);
            this.view = itemView;
            this.rank = rank;

            tvName = itemView.findViewById(R.id.iRakingLevel_tv_name);
            tvLevel = itemView.findViewById(R.id.iRakingLevel_tv_level);
            tvRaking = itemView.findViewById(R.id.iRakingLevel_tv_raking);
            ivTier = itemView.findViewById(R.id.iRakingLevel_iv_tier);
            ivImage = itemView.findViewById(R.id.iRakingLevel_iv_image);
            itemView.setOnClickListener(listener);
        }

        public void setItem(RankData item) {
            tvName.setText(item.getSummonerName());
            tvLevel.setText(item.getLevel() + " LV");
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
