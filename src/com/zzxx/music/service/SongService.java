package com.zzxx.music.service;

import java.util.List;

import com.zzxx.music.beans.Song;
import com.zzxx.music.utils.PageBean;

public interface SongService {
	List<Song> listHotSong(int num);
	PageBean<Song> listSongsByTppe(String currentPageStr, String pageSizeStr, String type);
	
}
