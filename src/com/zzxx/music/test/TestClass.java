package com.zzxx.music.test;

import org.junit.Test;

import com.zzxx.music.dao.SongDao;
import com.zzxx.music.dao.impl.SongDaoImpl;

public class TestClass {
	@Test
	public void test() {
		SongDao sd = new SongDaoImpl();
		int count = sd.getCount("为情所困");
		System.out.println(count);
	}
}
