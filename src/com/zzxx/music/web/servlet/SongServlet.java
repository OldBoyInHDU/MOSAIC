package com.zzxx.music.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.Gson;
import com.zzxx.music.beans.Song;
import com.zzxx.music.service.SongService;
import com.zzxx.music.utils.FactoryUtils;
import com.zzxx.music.utils.PageBean;



@WebServlet("/SongServlet")
public class SongServlet extends BaseServlet {
	SongService ss = (SongService) FactoryUtils.getInstance("SongService");
	public void songType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
//		System.out.println(type);
		String currentPage = request.getParameter("currentPage");
//		System.out.println(currentPage);
        String pageSize = "18";
        PageBean pb = ss.listSongsByType(currentPage, pageSize, type);
//        System.out.println(pb);
        if(currentPage==null) {
        	currentPage="1";
        }
        request.getSession().setAttribute("currentPage", currentPage);
        request.getSession().setAttribute("type", type);
        request.getSession().setAttribute("pageBean", pb);
//        response.setContentType("text/plain;charset=utf-8");
//		response.getWriter().write("{\"PageBean\":"+pb+"}");
        request.getRequestDispatcher("/genres.jsp").forward(request, response);
}
	public void formerPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		String nowcurrentPage = request.getParameter("currentPage");
		int intcurrentPage = Integer.parseInt(nowcurrentPage);
		
		String currentPage = Integer.toString(intcurrentPage-1);
        String pageSize = "18";
        PageBean pb = ss.listSongsByType(currentPage, pageSize, type);
        if(intcurrentPage==1) {
        	request.getRequestDispatcher("/genres.jsp").forward(request, response);
        }else{
        	 request.getSession().setAttribute("currentPage", currentPage);
             request.getSession().setAttribute("type", type);
             request.getSession().setAttribute("pageBean", pb);
             request.getRequestDispatcher("/genres.jsp").forward(request, response);
     }
}
       
	public void nextPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		String nowcurrentPage = request.getParameter("currentPage");
		int intcurrentPage = Integer.parseInt(nowcurrentPage);
		
		String currentPage = Integer.toString(intcurrentPage+1);
        String pageSize = "18";
        PageBean pb = ss.listSongsByType(currentPage, pageSize, type);
        if(intcurrentPage==pb.getTotalPage()) {
        	request.getRequestDispatcher("/genres.jsp").forward(request, response);
        }else{
        	 request.getSession().setAttribute("currentPage", currentPage);
             request.getSession().setAttribute("type", type);
             request.getSession().setAttribute("pageBean", pb);
             request.getRequestDispatcher("/genres.jsp").forward(request, response);
     }
}
	public void hotSong(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String  num =request.getParameter("num");
//		int num=12;
		List<Song> hotSongList = ss.listHotSong();
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
//		String num = request.getParameter("num");
//		int num=8;
		List<Song> newSongList = ss.listNewSong();
		System.out.println(newSongList);
		request.getSession().setAttribute("newSongList", newSongList);
		//{"newSongList":newSongList}
//		response.setContentType("text/plain;charset=utf-8");
//		response.getWriter().write("{\"newSongList\":"+newSongList+"}");
		request.getRequestDispatcher("/index.jsp").forward(request, response);
//		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}
	
}
