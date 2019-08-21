package com.zzxx.music.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzxx.music.service.SongService;
import com.zzxx.music.utils.FactoryUtils;
import com.zzxx.music.utils.PageBean;


@WebServlet("/SongServlet")
public class SongServlet extends BaseServlet {
	SongService ss = (SongService) FactoryUtils.getInstance("SongService");
	public void songsType(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		String currentPage = request.getParameter("currentPage");
        String pageSize = "18";
        PageBean pb = ss.listSongsByType(currentPage, pageSize, type);
        request.setAttribute("pageBean", pb);
        request.getRequestDispatcher(request.getContextPath()+"/genres.jsp").forward(request, response);
	}

}
