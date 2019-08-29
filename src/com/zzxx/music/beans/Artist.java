package com.zzxx.music.beans;

public class Artist {
    private Long artist_id;
    private String name;
    private String language;
    private String artisturl;
    public Artist(){};


    public Long getArtist_id() {
		return artist_id;
	}


	public void setArtist_id(Long artist_id) {
		this.artist_id = artist_id;
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
		return "Artist [artist_id=" + artist_id + ", name=" + name + ", language=" + language + ", artisturl="
				+ artisturl + "]";
	}
    
}
