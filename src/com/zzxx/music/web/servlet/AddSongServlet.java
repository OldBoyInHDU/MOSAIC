package com.zzxx.music.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.zzxx.music.beans.Song;
import com.zzxx.music.service.SongService;
import com.zzxx.music.service.impl.SongServiceImpl;
@WebServlet("/AddSongServlet")
public class AddSongServlet extends HttpServlet {
	
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String songid = request.getParameter("songid");
		System.out.println(songid);
		
		SongService ss = new SongServiceImpl();
		Song thisSong = ss.findSongBySongId(songid);
		System.out.println(request.getContextPath());
		System.out.println(thisSong.getSongurl());
		
		
		/*Gson gson = new Gson();
		String songJS = gson.toJson(thisSong);
		*/
		
		request.getSession().setAttribute("song", thisSong);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
