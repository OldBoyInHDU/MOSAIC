package com.zzxx.music.service;

import java.util.List;

import com.zzxx.music.beans.Song;
import com.zzxx.music.utils.PageBean;

public interface SongService {
	List<Song> listHotSong(int num);
	PageBean<Song> listSongsByType(String currentPageStr, String pageSizeStr, String type);
	Song findSongBySongId(String id);
	
}
