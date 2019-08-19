package com.zzxx.music.service;

import com.zzxx.music.beans.User;

public interface UserService {
	
	/**
	 * 注册时判断用户是否存在
	 * true:存在，false:不存在
	 */
	boolean checkUserIsExists(String email);
	
	/**
	 * 用户登录
	 * email为邮箱地址
	 * password为密码
	 */
	User login(String email, String password);
	
	/**
	 * 用户注册
	 * 注册成功后将user返回
	 */
	User register(User user);
	
}
