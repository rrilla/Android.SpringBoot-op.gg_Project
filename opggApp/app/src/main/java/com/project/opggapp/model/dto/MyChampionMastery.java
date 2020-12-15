package com.project.opggapp.model.dto;

public class MyChampionMastery {
    private String championId;
    private String championPoints;
    private String englishName;

    public String getChampionId() {
        return championId;
    }

    public void setChampionId(String championId) {
        this.championId = championId;
    }

    public String getChampionPoints() {
        return championPoints;
    }

    public void setChampionPoints(String championPoints) {
        this.championPoints = championPoints;
    }

    public String getEnglishName() {
        return englishName;
    }

    public void setEnglishName(String englishName) {
        this.englishName = englishName;
    }

    @Override
    public String toString() {
        return "MyChampionMastery{" +
                "championId='" + championId + '\'' +
                ", championPoints='" + championPoints + '\'' +
                ", englishName='" + englishName + '\'' +
                '}';
    }
}
