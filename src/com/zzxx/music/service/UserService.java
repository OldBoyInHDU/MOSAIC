package com.zzxx.music.service;

import java.util.List;

import com.zzxx.music.beans.Message;
import com.zzxx.music.beans.Tweet;
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
	
	/**
	 * 查找所有的用户
	 */
	List<User> findAllUser();
	
	/**
	 * 根据id查找用户
	 */
	User findUserById(String id);
	
	/**
	 * 通过用户id
	 * 返回用户留言list
	 */
	List<Message> findUserMessage(User user);
	
	/**
	 * 根据用户id找到用户动态
	 */
	List<Tweet> findUserTweet(User user);
	
	/**
	 * 存用户动态
	 */
	void saveUserTweet(User user, Tweet tweet);
	
	/**
	 * 存用户留言
	 */
	void saveUserMessage(User user, Message message);
	
	
	
	
	
	
	
	
	
}
