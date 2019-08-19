package com.zzxx.music.beans;

public class Artist {
    private int artistid;
    private String name;
    private String language;
    private String artisturl;
    public Artist(){};

    public int getArtistid() {
        return artistid;
    }

    public void setArtistid(int artistid) {
        this.artistid = artistid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getArtisturl() {
        return artisturl;
    }

    public void setArtisturl(String artisturl) {
        this.artisturl = artisturl;
    }

    @Override
    public String toString() {
        return "Artist{" +
                "artistid=" + artistid +
                ", name='" + name + '\'' +
                ", language='" + language + '\'' +
                ", artisturl='" + artisturl + '\'' +
                '}';
    }
}
