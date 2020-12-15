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
import com.project.opggapp.listener.OnChampionListClickListener;
import com.project.opggapp.model.Champion;
import com.project.opggapp.task.IP;

import java.util.ArrayList;

public class ChampionListAdapter extends RecyclerView.Adapter<ChampionListAdapter.ViewHolder>
        implements OnChampionListClickListener {

    ArrayList<Champion> items = new ArrayList<Champion>();
    OnChampionListClickListener listener;

    @NonNull
    @Override
    public ChampionListAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.item_mainfragment3_champion, viewGroup, false);

        return new ChampionListAdapter.ViewHolder(itemView, this);
    }

    @Override
    public void onBindViewHolder(@NonNull ChampionListAdapter.ViewHolder viewHolder, int position) {
        Champion item = items.get(position);
        viewHolder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(Champion item) {
        items.add(item);
    }

    public void setItems(ArrayList<Champion> items) {
        this.items = items;
    }

    public Champion getItem(int position) {
        return items.get(position);
    }

    public void setItem(int position, Champion item) {
        items.set(position, item);
    }

    public void deleteItem() {
        this.items = null;
    }

    public void setOnItemClickListener(OnChampionListClickListener listener) {
        this.listener = listener;
    }

    @Override
    public void onItemClick(ChampionListAdapter.ViewHolder holder, View view, int position) {
        if (listener != null) {
            listener.onItemClick(holder, view, position);
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView tvName, tvTier, tvWin, tvPick, tvBan;
        ImageView ivImage;
        View view;

        public ViewHolder(View itemView, final OnChampionListClickListener listener) {
            super(itemView);
            this.view = itemView;

            tvName = itemView.findViewById(R.id.iChampion_tv_name);
            tvTier = itemView.findViewById(R.id.iChampion_tv_tier);
            tvWin = itemView.findViewById(R.id.iChampion_tv_win);
            tvPick = itemView.findViewById(R.id.iChampion_tv_pick);
            tvBan = itemView.findViewById(R.id.iChampion_tv_ban);
            ivImage = itemView.findViewById(R.id.iChampion_iv_image);

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

        public void setItem(Champion item) {
            tvName.setText(item.getName());
            tvTier.setText(item.getTier()+" 티어");
            tvWin.setText(item.getWinRate()+"%");
            tvPick.setText(item.getPickRate()+"%");
            tvBan.setText(item.getBanRate()+"%");
            Glide.with(view).load(IP.urlChampion + item.getEnglishName()+".png").circleCrop().into(ivImage);
        }

    }
}
