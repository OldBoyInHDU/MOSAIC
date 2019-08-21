package com.zzxx.music.web.servlet;

<<<<<<< HEAD
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
=======
>>>>>>> refs/remotes/origin/master
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import com.google.gson.Gson;
import com.zzxx.music.beans.Song;
import com.zzxx.music.service.SongService;
import com.zzxx.music.utils.FactoryUtils;
import com.zzxx.music.utils.PageBean;

=======
>>>>>>> refs/remotes/origin/master

@WebServlet("/SongServlet")
public class SongServlet extends BaseServlet {
<<<<<<< HEAD
	SongService ss = (SongService) FactoryUtils.getInstance("SongService");
	public void songType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
//		System.out.println(type);
		String currentPage = request.getParameter("currentPage");
//		System.out.println(currentPage);
        String pageSize = "18";
        PageBean pb = ss.listSongsByType(currentPage, pageSize, type);
//        System.out.println(pb);
        request.getSession().setAttribute("type", type);
        request.getSession().setAttribute("pageBean", pb);
//        response.setContentType("text/plain;charset=utf-8");
//		response.getWriter().write("{\"PageBean\":"+pb+"}");
        response.sendRedirect(request.getContextPath()+"/genres.jsp");
=======

	public void songsType(HttpServletRequest request, HttpServletResponse response) {
		
>>>>>>> refs/remotes/origin/master
	}
	
	public void hotSong(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
//		int num=12;
		List<Song> hotSongList = ss.listHotSong(num);
		System.out.println(hotSongList);
//		Gson gs = new Gson();
//		String hsl= gs.toJson(hotSongList);
		request.getSession().setAttribute("hotSongList", hotSongList);
//		response.setContentType("text/plain;charset=utf-8");
//		response.getWriter().write("{\"hotSongList\":"+hsl+"}");
		request.getRequestDispatcher("/index.jsp").forward(request, response);
//		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}
	public void newSong(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
//		int num=8;
		List<Song> newSongList = ss.listHotSong(num);
		System.out.println(newSongList);
		request.getSession().setAttribute("newSongList", newSongList);
		//{"newSongList":newSongList}
//		response.setContentType("text/plain;charset=utf-8");
//		response.getWriter().write("{\"newSongList\":"+newSongList+"}");
		request.getRequestDispatcher("/index.jsp").forward(request, response);
//		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}
	
}
