package com.project.opggapp.model;

public class RankData {
    private int rno;
    private String name;
    private String tier;
    private String profileIconId;
    private int point;
    private int win;
    private int lose;
    private int level;
    //private List<RankChampMastery> rankChampMastery;

    public String getProfileIconId() {
        return profileIconId;
    }

    public void setProfileIconId(String profileIconId) {
        this.profileIconId = profileIconId;
    }

    public int getRno() {
        return rno;
    }

    public void setRno(int rno) {
        this.rno = rno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTier() {
        return tier;
    }

    public void setTier(String tier) {
        this.tier = tier;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public int getWin() {
        return win;
    }

    public void setWin(int win) {
        this.win = win;
    }

    public int getLose() {
        return lose;
    }

    public void setLose(int lose) {
        this.lose = lose;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    @Override
    public String toString() {
        return "RankData{" +
                "rno=" + rno +
                ", name='" + name + '\'' +
                ", tier='" + tier + '\'' +
                ", point=" + point +
                ", win=" + win +
                ", lose=" + lose +
                ", level=" + level +
                '}';
    }
}
