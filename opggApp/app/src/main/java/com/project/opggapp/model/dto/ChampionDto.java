package com.project.opggapp.model.dto;

import com.project.opggapp.model.Champion;

import java.util.List;

public class ChampionDto {
    private List<Champion> topList;
    private List<Champion> jungleList;
    private List<Champion> midList;
    private List<Champion> bottomList;
    private List<Champion> supList;

    public List<Champion> getTopList() {
        return topList;
    }

    public void setTopList(List<Champion> topList) {
        this.topList = topList;
    }

    public List<Champion> getJungleList() {
        return jungleList;
    }

    public void setJungleList(List<Champion> jungleList) {
        this.jungleList = jungleList;
    }

    public List<Champion> getMidList() {
        return midList;
    }

    public void setMidList(List<Champion> midList) {
        this.midList = midList;
    }

    public List<Champion> getBottomList() {
        return bottomList;
    }

    public void setBottomList(List<Champion> bottomList) {
        this.bottomList = bottomList;
    }

    public List<Champion> getSupList() {
        return supList;
    }

    public void setSupList(List<Champion> supList) {
        this.supList = supList;
    }

    @Override
    public String toString() {
        return "ChampionDto{" +
                "topList=" + topList +
                ", jungleList=" + jungleList +
                ", midList=" + midList +
                ", bottomList=" + bottomList +
                ", supList=" + supList +
                '}';
    }
}
