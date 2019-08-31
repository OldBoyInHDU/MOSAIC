package com.zzxx.music.web.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzxx.music.beans.Message;
import com.zzxx.music.beans.Song;
import com.zzxx.music.beans.Tweet;
import com.zzxx.music.beans.User;
import com.zzxx.music.service.SongService;
import com.zzxx.music.service.UserService;
import com.zzxx.music.service.impl.SongServiceImpl;
import com.zzxx.music.service.impl.UserServiceImpl;

@WebFilter("/profile.jsp")
public class ProfileFilter implements Filter {
    public ProfileFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		User user = (User)request.getSession().getAttribute("user");
		//获得收藏歌曲
		SongService ss = new SongServiceImpl();
		List<Song> likeSongList = ss.findUserSongCollection(user);
		
		//获得留言
		UserService us = new UserServiceImpl();
		List<Message> messages = us.findUserMessage(user);
		
		//获得动态
		List<Tweet> tweets = us.findUserTweet(user);
		
		request.getSession().setAttribute("messages", messages);
		request.getSession().setAttribute("tweets", tweets);
		request.getSession().setAttribute("likeSongList", likeSongList);
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
