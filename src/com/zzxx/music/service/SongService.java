package com.zzxx.music.service;

import java.util.List;
import java.util.Set;

import com.zzxx.music.beans.Song;
import com.zzxx.music.beans.User;
import com.zzxx.music.utils.PageBean;

public interface SongService {
	List<Song> listHotSong();
	List<Song> listNewSong();
	PageBean<Song> listSongsByType(String currentPageStr, String pageSizeStr, String type);
	Song findSongBySongId(String id);
	List<Song> searchSongBySongName(String songName);
	List<Song> searchSongByArtistName(String artistName);
	Set<Song> AddSongToPlayerSet(Set<Song> list, String id);
	List<Song> findUserSongCollection(User user, Song song);
	
}
