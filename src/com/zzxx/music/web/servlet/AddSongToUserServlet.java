package com.zzxx.music.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzxx.music.beans.Song;
import com.zzxx.music.beans.User;
import com.zzxx.music.service.SongService;
import com.zzxx.music.service.UserService;
import com.zzxx.music.service.impl.SongServiceImpl;
import com.zzxx.music.service.impl.UserServiceImpl;
@WebServlet("/AddSongToUserServlet")
public class AddSongToUserServlet extends HttpServlet {
	SongService ss = new SongServiceImpl();
	UserService us = new UserServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uuid= request.getParameter("id");
		String song_id= request.getParameter("songid");
		System.out.println(uuid);
		System.out.println(song_id);
		if(uuid=="") {
			request.getRequestDispatcher("/signin.jsp").forward(request, response);
			
		}else {
			User user = us.findUserById(uuid);
			Song song = ss.findSongBySongId(song_id);
			List<Song> list = ss.findUserSongCollection(user, song);
			request.getSession().setAttribute("UserSongCollection", list);
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
