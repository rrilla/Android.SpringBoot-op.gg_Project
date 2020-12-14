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

import java.util.ArrayList;

public class RakingTierListAdapter extends RecyclerView.Adapter<RakingTierListAdapter.ViewHolder> {

    ArrayList<RankData> items = new ArrayList<RankData>();
    View.OnClickListener listener;

    @NonNull
    @Override
    public RakingTierListAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.item_mainfragment4_raking, viewGroup, false);

        return new RakingTierListAdapter.ViewHolder(itemView, listener);
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
        TextView tvName, tvTier, tvPoint, tvRaking;
        ImageView ivImage;
        View view;

        public ViewHolder(View itemView, final View.OnClickListener listener) {
            super(itemView);
            this.view = itemView;

            tvName = itemView.findViewById(R.id.iRakingTier_tv_name);
            tvTier = itemView.findViewById(R.id.iRakingTier_tv_tier);
            tvPoint = itemView.findViewById(R.id.iRakingTier_tv_point);
            tvRaking = itemView.findViewById(R.id.iRakingTier_tv_raking);

            //ivImage = itemView.findViewById(R.id.iBoard_iv_writerImage);
            itemView.setOnClickListener(listener);
        }

        public void setItem(RankData item) {
            tvName.setText(item.getName());
            tvTier.setText(item.getTier());
            tvPoint.setText(item.getPoint() + " LP");
            tvRaking.setText(item.getRno() + "");

            //Glide.with(view).load(item.getUser().getImage()).into(ivWriterImage);
        }

    }
}
