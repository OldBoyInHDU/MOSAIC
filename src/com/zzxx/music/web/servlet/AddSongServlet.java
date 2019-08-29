package com.zzxx.music.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.zzxx.music.beans.Song;
import com.zzxx.music.beans.SongJson;
import com.zzxx.music.service.SongService;
import com.zzxx.music.service.impl.SongServiceImpl;
@WebServlet("/AddSongServlet")
public class AddSongServlet extends HttpServlet {
	
    private List<SongJson> songList = new ArrayList<SongJson>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String songid = request.getParameter("songid");
//		System.out.println(songid);
		System.out.println(songid);
		SongService ss = new SongServiceImpl();
		Song thisSong = ss.findSongBySongId(songid);
		System.out.println(thisSong);
		
		
//		int length = songList.size();
//		boolean flag = false;
//		if(songList.isEmpty()) {
//			flag = false;
//		} else {
//			for(int i = 0; i < length; i++) {
//				if(thisSong.getSongid() != songList.get(i).getSongid()) {
//					flag = false;
//				} else {
//					flag = true;
//				}
//			}
//		}
//		
//		if(!flag) {
//			songList.add(thisSong);
//		}
		
		SongJson sj = new SongJson();
		sj.setTitle(thisSong.getName());
		sj.setArtist(thisSong.getArtist());
		sj.setMp3("/MusicShare"+thisSong.getSongurl());
		sj.setPoster("/MusicShare"+thisSong.getImgurl());
		System.out.println(sj);
		System.out.println(songList);
		if(!songList.contains(sj)) {
			songList.add(sj);
		}
		System.out.println(songList);
		Collections.reverse(songList);
		
		request.getSession().setAttribute("javaSongList", songList);
		
		
		
		
		
		
		/*System.out.println(request.getContextPath());
		System.out.println(thisSong.getSongurl());*/
		
//		System.out.println(songList.toString());
		
		
		Gson gson = new Gson();
		String songJS = gson.toJson(songList);
		
//		System.out.println("songJS:"+songJS);
		request.getSession().setAttribute("songList", songJS);
		String referer = request.getHeader("referer");
		String[] s = referer.split("/");
		String path = s[s.length-1];
		response.sendRedirect(request.getContextPath()+"/"+path);
//		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
