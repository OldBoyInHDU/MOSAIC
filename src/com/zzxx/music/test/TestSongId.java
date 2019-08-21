package com.zzxx.music.test;

import org.junit.Test;

import com.zzxx.music.beans.Song;
import com.zzxx.music.dao.SongDao;
import com.zzxx.music.dao.impl.SongDaoImpl;

public class TestSongId {
	@Test
	public void test01() {
		SongDao sd = new SongDaoImpl();
		Song songBySongId = sd.getSongBySongId(1);
		System.out.println(songBySongId);
	}
}
