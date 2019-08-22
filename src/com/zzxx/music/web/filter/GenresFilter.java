package com.zzxx.music.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzxx.music.service.SongService;
import com.zzxx.music.utils.FactoryUtils;
import com.zzxx.music.utils.PageBean;

@WebFilter("/genres.jsp")
public class GenresFilter implements Filter {
	SongService ss = (SongService) FactoryUtils.getInstance("SongService");
    public GenresFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)resp;
		Object pageBean = request.getAttribute("pageBean");
		if(pageBean==null) {
			String currentPage = request.getParameter("currentPage");
			String type = "所有歌曲";
			String pageSize = "18";
			PageBean pb = ss.listSongsByType(currentPage, pageSize, type);
			request.getSession().setAttribute("type", type);
			request.getSession().setAttribute("pageBean", pb);
			request.getRequestDispatcher("/genres.jsp").forward(request, response);
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
