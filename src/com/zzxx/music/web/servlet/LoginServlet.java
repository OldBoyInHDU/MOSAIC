package com.zzxx.music.web.servlet;

import com.zzxx.music.beans.User;
import com.zzxx.music.service.UserService;
import com.zzxx.music.utils.FactoryUtils;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
//		System.out.println(username);
//		System.out.println(password);
		UserService us = (UserService) FactoryUtils.getInstance("UserService");
		try{
			User user = us.login(username, password);
			if(user.getUsername().equals(username) && user.getPassword().equals(password)){
				response.sendRedirect("/index.jsp");
			} else {

			}
		} catch (Exception e){
			request.setAttribute("exception", e);
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		}
//		if("zhangsan".equals(username) && "12345".equals(password)){
//			System.out.println("jinrul");
//				response.sendRedirect(request.getContextPath()+"/index.jsp");
//			}



	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}