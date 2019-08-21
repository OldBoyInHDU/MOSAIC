package com.zzxx.music.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.zzxx.music.beans.Song;
import com.zzxx.music.service.SongService;
import com.zzxx.music.service.impl.SongServiceImpl;

/**
 * Servlet implementation class FindSongBySongName
 */
@WebServlet("/FindSongBySongNameServlet")
public class FindSongBySongNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FindSongBySongNameServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 根据关键字。查询歌曲列表
		// 1.接收请求、获得参数
		String word = request.getParameter("word");
		// 2.封装javabean对象
		// 3.调用service获得结果
		SongService ss = new SongServiceImpl();
		List<Song> list = ss.searchSongBySongName(word);
		// 4.指定jsp显示 
//		System.out.println(list);
		// 将java对象 变为json对象格式的字符串
		// json转换工具 jsonlib、gson、fastjson
//		JSON.toJSON(list);
		Gson gson = new Gson();
		String json = gson.toJson(list);
//		System.out.println(json);
		response.setContentType("text/plain;charset=utf-8");
		response.getWriter().write(json);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
