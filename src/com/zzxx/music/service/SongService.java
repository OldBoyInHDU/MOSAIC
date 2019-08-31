package com.zzxx.music.service;

import java.util.List;
import java.util.Set;

import com.zzxx.music.beans.Song;
import com.zzxx.music.beans.User;
import com.zzxx.music.utils.PageBean;

public interface SongService {
	/**
	 * 获得12首热歌，根据点击量排序
	 */
	List<Song> listHotSong();
	
	/**
	 * 获得8首新歌，根据时间排序
	 */
	List<Song> listNewSong();
	
	/**
	 * 歌曲分类页面分页查询
	 */
	PageBean<Song> listSongsByType(String currentPageStr, String pageSizeStr, String type);
	
	/**
	 * 根据歌曲id获得歌曲
	 */
	Song findSongBySongId(String id);
	
	/**
	 * 搜索框根据歌名找歌
	 */
	List<Song> searchSongBySongName(String songName);
	
	/**
	 * 搜索框根据歌手找歌
	 */
	List<Song> searchSongByArtistName(String artistName);
	
	/**
	 * 将歌曲添加到播放列表
	 */
	Set<Song> AddSongToPlayerSet(Set<Song> list, String id);
	
	/**
	 * 首页对歌曲进行收藏/取消
	 */
	List<Song> findUserSongCollection(User user, Song song);
	
	/**
	 * 获得用户收藏的歌曲
	 */
	List<Song> findUserSongCollection(User user);
	
}
