package com.project.opggapp.model.dto;

import java.util.List;

public class MyInfo {
    private String summonerName;
    private Long summonerLevel;
    private String profileIconId;
    private String tier;
    private String rank;
    private String leaguePoints;
    private List<MyChampionMastery> myChampionMastery;

    public String getSummonerName() {
        return summonerName;
    }

    public void setSummonerName(String summonerName) {
        this.summonerName = summonerName;
    }

    public Long getSummonerLevel() {
        return summonerLevel;
    }

    public void setSummonerLevel(Long summonerLevel) {
        this.summonerLevel = summonerLevel;
    }

    public String getProfileIconId() {
        return profileIconId;
    }

    public void setProfileIconId(String profileIconId) {
        this.profileIconId = profileIconId;
    }

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

    public String getLeaguePoints() {
        return leaguePoints;
    }

    public void setLeaguePoints(String leaguePoints) {
        this.leaguePoints = leaguePoints;
    }

    public List<MyChampionMastery> getMyChampionMastery() {
        return myChampionMastery;
    }

    public void setMyChampionMastery(List<MyChampionMastery> myChampionMastery) {
        this.myChampionMastery = myChampionMastery;
    }

    @Override
    public String toString() {
        return "MyInfo{" +
                "summonerName='" + summonerName + '\'' +
                ", summonerLevel=" + summonerLevel +
                ", profileIconId='" + profileIconId + '\'' +
                ", tier='" + tier + '\'' +
                ", rank='" + rank + '\'' +
                ", leaguePoints='" + leaguePoints + '\'' +
                ", myChampionMastery=" + myChampionMastery +
                '}';
    }
}
