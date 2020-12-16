package com.project.opggapp.model.dto;

public class FreeRank {
    private String tier;
    private String rank;
    private String point;
    private int win;
    private int loss;

    public String getTier() {
        return tier;
    }

    public void setTier(String tier) {
        this.tier = tier;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point;
    }

    public int getWin() {
        return win;
    }

    public void setWin(int win) {
        this.win = win;
    }

    public int getLoss() {
        return loss;
    }

    public void setLoss(int loss) {
        this.loss = loss;
    }

    @Override
    public String toString() {
        return "FreeRank{" +
                "tier='" + tier + '\'' +
                ", rank='" + rank + '\'' +
                ", point='" + point + '\'' +
                ", win=" + win +
                ", loss=" + loss +
                '}';
    }
}
