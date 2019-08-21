package com.zzxx.music.test;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.Test;

import com.zzxx.music.beans.Song;
import com.zzxx.music.beans.User;
import com.zzxx.music.service.SongService;
import com.zzxx.music.service.UserService;
import com.zzxx.music.utils.DataSourceUtils;
import com.zzxx.music.utils.FactoryUtils;
import com.zzxx.music.utils.PageBean;

public class TestDemo {
	UserService us = (UserService) FactoryUtils.getInstance("UserService");
	SongService ss = (SongService) FactoryUtils.getInstance("SongService");
	
	// 测试数据库连接
	@Test
	public void test01() {
		QueryRunner qu = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user where username=?";
		try {
			User user = qu.query(sql, new BeanHandler<User>(User.class), "david");
			System.out.println(user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 测试用户邮箱是否存在
	@Test
	public void testcheckUserIsExists() {
		boolean isExists = us.checkUserIsExists("12345@qq.com");
		System.out.println(isExists);
	}
	
	// 测试用户是否登录成功
	@Test 
	public void testLogin() {
		try {
			User user = us.login("1234@qq.com", "12345");
			System.out.println(user);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	// 测试用户注册
	@Test
	public void testRegister() {
		User user = new User();
		user.setEmail("23333@qq.com");
		user.setMobilenumber("12323332333");
		user.setPassword("2333");
		user.setUsername("小三");
		User user2 = us.register(user);
		System.out.println(user2);
	}
	
	// 测试随机获得12首热歌/8首新歌
	@Test
	public void testGetHotSongs() {
		List<Song> listHotSong = ss.listHotSong(12);
//		List<Song> listNewSong = ss.listHotSong(8);
		System.out.println("热歌：" + listHotSong.size());
//		System.out.println("新歌：" + listNewSong.size());
		System.out.println("热歌：" + listHotSong);
//		System.out.println("新歌：" + listNewSong);
	}
	
	// 测试分页显示
	@Test
	public void testPageBean() {
		PageBean<Song> bean = ss.listSongsByType("2", "5", "心潮澎湃");
		System.out.println(bean.getTotalCount());
		System.out.println(bean.getList().size());
		System.out.println(bean.getList());
	}

}
