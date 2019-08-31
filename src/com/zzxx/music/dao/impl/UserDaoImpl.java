package com.zzxx.music.dao.impl;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zzxx.music.beans.User;
import com.zzxx.music.dao.UserDao;
import com.zzxx.music.utils.DataSourceUtils;

public class UserDaoImpl implements UserDao {
	private QueryRunner qu = new QueryRunner(DataSourceUtils.getDataSource());
	@Override
	public User addUser(User user) {
		String sql = "insert into user(uuid,username,password,email) values (?,?,?,?)";
		try {
		qu.update(sql,user.getUuid(),user.getUsername(),user.getPassword(),user.getEmail());
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public User findUserByEmail(String email) {
		String sql = "select * from user where email=?";
		try {
			return qu.query(sql, new BeanHandler<User>(User.class),email);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public User getUserByEmailAndPassword(String email, String password) {
		String sql = "select * from user where email=? and password=?";
		try {
			return qu.query(sql, new BeanHandler<User>(User.class),email,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<User> getAllUsers() {
		String sql = "select * from user";
		try {
			return qu.query(sql, new BeanListHandler<User>(User.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@Override
	public User findUserById(String id){
	   String sql = "select * from user where uuid = ?";
	   try {
	      return qu.query(sql, new BeanHandler<User>(User.class),id);
	   } catch (SQLException e) {
	      e.printStackTrace();
	   }
	   return null;
	}
}
