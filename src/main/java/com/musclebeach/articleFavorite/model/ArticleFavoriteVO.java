package com.musclebeach.articleFavorite.model;

public class ArticleFavoriteVO implements java.io.Serializable {
    private Integer artID;
    private Integer memID;

    public Integer getArtID() {
        return artID;
    }

    public void setArtID(Integer artID) {
        this.artID = artID;
    }

    public Integer getMemID() {
        return memID;
    }

    public void setMemID(Integer memID) {
        this.memID = memID;
    }
}
