package com.project.opggapp.model;

public class Champion {
    private int cno;
    private String name;
    private int id;
    private String lane;
    private String story;
    private float winRate;
    private float pickRate;
    private float banRate;
    private int tier;
    private String englishName;

    public float getBanRate() {
        return banRate;
    }

    public void setBanRate(float banRate) {
        this.banRate = banRate;
    }

    public int getCno() {
        return cno;
    }

    public void setCno(int cno) {
        this.cno = cno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLane() {
        return lane;
    }

    public void setLane(String lane) {
        this.lane = lane;
    }

    public String getStory() {
        return story;
    }

    public void setStory(String story) {
        this.story = story;
    }

    public float getWinRate() {
        return winRate;
    }

    public void setWinRate(float winRate) {
        this.winRate = winRate;
    }

    public float getPickRate() {
        return pickRate;
    }

    public void setPickRate(float pickRate) {
        this.pickRate = pickRate;
    }

    public int getTier() {
        return tier;
    }

    public void setTier(int tier) {
        this.tier = tier;
    }

    public String getEnglishName() {
        return englishName;
    }

    public void setEnglishName(String englishName) {
        this.englishName = englishName;
    }

    @Override
    public String toString() {
        return "Champion{" +
                "cno=" + cno +
                ", name='" + name + '\'' +
                ", id=" + id +
                ", lane='" + lane + '\'' +
                ", story='" + story + '\'' +
                ", winRate=" + winRate +
                ", pickRate=" + pickRate +
                ", tier=" + tier +
                ", englishName='" + englishName + '\'' +
                '}';
    }
}
