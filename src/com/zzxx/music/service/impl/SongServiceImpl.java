package com.zzxx.music.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.zzxx.music.dao.impl.SongDao;
import com.zzxx.music.service.SongService;
import com.zzxx.music.utils.FactoryUtils;
import com.zzxx.music.utils.PageBean;


public class SongServiceImpl implements SongService {
	SongDao sd = (SongDao)FactoryUtils.getInstance("SongDao");
	
	/**
	 * 随机获得12首热歌  num=12
	 * 或者8首新歌  num=8
	 */
	public List<Song> listHotSong(int num){
		int a = (int) (Math.random()*7+1);
		List<Song> allSong = sd.findAllSongs();
		List<Song> list = new ArrayList<Song>();
		int number = a;
		for(int i = 0; i < num; i++) {
			list.add(allSong.get(number));
			number = number + a;
		}
		return list;
	}
	
	/**
	 * 歌曲分类页面
	 * 根据分类获得歌曲list
	 * 将list存入PageBean
	 * 返回PageBean
	 */
	public PageBean<Song> listSongsByTppe(String currentPageStr, String pageSizeStr, String type){
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
}
