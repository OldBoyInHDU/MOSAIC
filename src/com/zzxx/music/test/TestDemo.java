package com.zzxx.music.test;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.Test;

import com.zzxx.music.beans.User;
import com.zzxx.music.utils.DataSourceUtils;

public class TestDemo {
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

}
