package com.zzxx.music.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.zzxx.music.beans.User;
import com.zzxx.music.service.UserService;
import com.zzxx.music.utils.FactoryUtils;

@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {
	UserService us = (UserService) FactoryUtils.getInstance("UserService");
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		try{
			User user = us.login(username, password);
			System.out.println(user.getEmail());
			System.out.println(user.getPassword());
			if(user.getEmail().equals(username) && user.getPassword().equals(password)){
				List<User> allUsers = us.findAllUser();
				System.out.println(allUsers.toString());
				request.getSession().setAttribute("AllUsers", allUsers);
				request.getSession().setAttribute("user", user);
				response.sendRedirect(request.getContextPath()+"/index.jsp");
			} else {

			}
		} catch (Exception e){
			request.setAttribute("exception", e);
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		}

	}
	public void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		User user = new User();
		try {
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println(user.toString());
			System.out.println(user.getEmail());
			boolean flag = us.checkUserIsExists(user.getEmail());
			System.out.println(flag);
			if(!flag) {
				User u = us.register(user);
				System.out.println(u.toString());
				request.getSession().setAttribute("user", u);
			}
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}

		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}
	
	public void userCheck(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");

        UserService us = (UserService)FactoryUtils.getInstance("UserService");
        boolean isExists = us.checkUserIsExists(email);
        System.out.println(isExists);
//        boolean isExists =false;
        response.setContentType("text/plain;charset=utf-8");
        //{"isExists":}
        response.getWriter().write("{\"isExists\":" + isExists +"}");
	}

}
