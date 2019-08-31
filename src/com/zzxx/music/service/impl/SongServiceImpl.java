package com.zzxx.music.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.zzxx.music.beans.Song;
import com.zzxx.music.beans.User;
import com.zzxx.music.dao.SongDao;
import com.zzxx.music.service.SongService;
import com.zzxx.music.utils.FactoryUtils;
import com.zzxx.music.utils.PageBean;


public class SongServiceImpl implements SongService {
	SongDao sd = (SongDao)FactoryUtils.getInstance("SongDao");
	
	/**
	 * 获得12首热歌 
	 */
	public List<Song> listHotSong(){
		List<Song> list = sd.getSong12ByHot();
		return list;
	}
	
	/**
	 * 获得8首新歌
	 */
	public List<Song> listNewSong(){
		List<Song> list = sd.getSong8ByDate();
		return list;
	}
	
	/**
	 * 歌曲分类页面
	 * 根据分类获得歌曲list
	 * 将list存入PageBean
	 * 返回PageBean
	 */
	public PageBean<Song> listSongsByType(String currentPageStr, String pageSizeStr, String type){
		int currentPage = 0;
		int pageSize = 0;
		if (currentPageStr == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.valueOf(currentPageStr);
		}
		
		if (pageSizeStr == null) {
			pageSize = 18;
		} else {
			pageSize = Integer.valueOf(pageSizeStr);
		}
		int totalCount = sd.getCount(type);
		List<Song> list = sd.findSongsByPage(currentPage, pageSize, type);
		
		PageBean<Song> pb = new PageBean<Song>(totalCount, currentPage, pageSize);
		pb.setList(list);
		return pb;
	}

	/**
	 * 通过歌曲id查找歌曲
	 */
	@Override
	public Song findSongBySongId(String id) {
		long songId = Long.valueOf(id);
		Song song = sd.getSongBySongId(songId);
		return song;
	}

	/**
	 * 搜索框根据歌名搜索歌曲
	 */
	@Override
	public List<Song> searchSongBySongName(String songName) {
		List<Song> list = sd.getSongBySongName(songName);
		return list;
	}

	/**
	 * 搜索框根据歌手名搜索歌曲
	 */
	@Override
	public List<Song> searchSongByArtistName(String artistName) {
		List<Song> list = sd.getSongByArtistName(artistName);
		return list;
	}

	@Override
	/**
	 * 将歌曲加入播放列表中
	 */
	public Set<Song> AddSongToPlayerSet(Set<Song> set, String id) {
		int songId = Integer.valueOf(id);
		Song song = sd.getSongBySongId(songId);
		set.add(song);
		return set;
	}

	/**
	 * 若歌已存在收藏歌单中，则移除
	 * 若不存在，则加入
	 */
	public List<Song> findUserSongCollection(User user, Song song) {
		List<Song> list = sd.getUserSongList(user);
		if(list.contains(song)) {
			sd.deleteSongFromCollection(user, song);
		}else {
			sd.addSongToCollection(user, song);
		}
		return list;
	}

	/**
	 * 获得用户收藏歌单
	 */
	public List<Song> findUserSongCollection(User user) {
		List<Song> list = sd.getUserSongList(user);
		return list;
	}
}
