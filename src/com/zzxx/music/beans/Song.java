package com.zzxx.music.beans;

public class Song {
    private int songid;
    private String name;
    private String songurl;
    private String imgurl;
    private String artist;
    private String album;
    private String type;
    public Song(){

    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getSongid() {
        return songid;
    }

    public void setSongid(int songid) {
        this.songid = songid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSongurl() {
        return songurl;
    }

    public void setSongurl(String songurl) {
        this.songurl = songurl;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    @Override
    public String toString() {
        return "Song{" +
                "songid=" + songid +
                ", name='" + name + '\'' +
                ", songurl='" + songurl + '\'' +
                ", imgurl='" + imgurl + '\'' +
                ", artist='" + artist + '\'' +
                ", album='" + album + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
