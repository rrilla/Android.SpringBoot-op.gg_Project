package com.project.opggapp.model.dto;

import java.util.List;

public class GameMyInfo {
    private String username;
    private String proflie;
    private Long userLevel;
    private SoloRank soloRank;
    private FreeRank freeRank;
    private List<GameMyChampion> myChampion;

    public List<GameMyChampion> getMyChampion() {
        return myChampion;
    }

    public void setMyChampion(List<GameMyChampion> myChampion) {
        this.myChampion = myChampion;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getProflie() {
        return proflie;
    }

    public void setProflie(String proflie) {
        this.proflie = proflie;
    }

    public Long getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(Long userLevel) {
        this.userLevel = userLevel;
    }

    public SoloRank getSoloRank() {
        return soloRank;
    }

    public void setSoloRank(SoloRank soloRank) {
        this.soloRank = soloRank;
    }

    public FreeRank getFreeRank() {
        return freeRank;
    }

    public void setFreeRank(FreeRank freeRank) {
        this.freeRank = freeRank;
    }

    @Override
    public String toString() {
        return "GameMyInfo{" +
                "username='" + username + '\'' +
                ", proflie='" + proflie + '\'' +
                ", userLevel=" + userLevel +
                ", soloRank=" + soloRank +
                ", freeRank=" + freeRank +
                '}';
    }
}
