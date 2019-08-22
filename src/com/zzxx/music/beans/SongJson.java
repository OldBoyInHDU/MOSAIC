package com.zzxx.music.beans;

public class SongJson {
	private String title;
	private String artist;
	private String mp3;
	private String poster;
	
	public SongJson() {
		
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getMp3() {
		return mp3;
	}

	public void setMp3(String mp3) {
		this.mp3 = mp3;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	@Override
	public String toString() {
		return "SongJson [title=" + title + ", artist=" + artist + ", mp3=" + mp3 + ", poster=" + poster + "]";
	}
	
	
}
