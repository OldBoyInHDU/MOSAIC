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

import com.zzxx.music.beans.Song;
import com.zzxx.music.service.SongService;
import com.zzxx.music.utils.FactoryUtils;


@WebFilter("/index.jsp")
public class IndexFilter implements Filter {
	SongService ss = (SongService) FactoryUtils.getInstance("SongService");
    public IndexFilter() {
    
    }

	
	public void destroy() {
		
	}

	
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)resp;
		Object hotSongList = request.getAttribute("hotSongList");
		Object newSongList = request.getAttribute("newSongList");
		if(hotSongList==null&& newSongList ==null) {
			List<Song> SongListnew = ss.listNewSong();
			request.getSession().setAttribute("newSongList", SongListnew);
			List<Song> SongListhot = ss.listHotSong();
			request.getSession().setAttribute("hotSongList", SongListhot);
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			
		}
		chain.doFilter(request, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
	
	}

}
