package com.zzxx.music.test;

import java.util.List;

import org.junit.Test;

import com.zzxx.music.beans.Song;
import com.zzxx.music.dao.SongDao;
import com.zzxx.music.dao.impl.SongDaoImpl;

public class TestfindSongsByPage {
	@Test
	public void test01() {
		SongDao sd = new SongDaoImpl();
		List<Song> findSongsByPage = sd.findSongsByPage(1, 3, "All");
		System.out.println(findSongsByPage);
	}
}
