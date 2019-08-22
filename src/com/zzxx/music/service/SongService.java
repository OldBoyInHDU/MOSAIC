package com.zzxx.music.service;

import java.util.List;

import com.zzxx.music.beans.Song;
import com.zzxx.music.utils.PageBean;

public interface SongService {
	List<Song> listHotSong();
	List<Song> listNewSong();
	PageBean<Song> listSongsByType(String currentPageStr, String pageSizeStr, String type);
	Song findSongBySongId(String id);
	List<Song> searchSongBySongName(String songName);
	List<Song> searchSongByArtistName(String artistName);
	List<Song> AddSongToPlayerList(List<Song> list, String id);
	
}
