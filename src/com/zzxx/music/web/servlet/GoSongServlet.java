package com.zzxx.music.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzxx.music.beans.Song;
import com.zzxx.music.service.SongService;
import com.zzxx.music.service.impl.SongServiceImpl;
@WebServlet("/GoSongServlet")
public class GoSongServlet extends HttpServlet {
	SongService ss = new SongServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String song_id = request.getParameter("songid");
		Song song = ss.findSongBySongId(song_id);
		request.setAttribute("thissong", song);
		request.getRequestDispatcher("/trackdetail.jsp").forward(request, response);
		
				
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}