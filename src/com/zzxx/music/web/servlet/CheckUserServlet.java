package com.zzxx.music.web.servlet;

import com.zzxx.music.service.UserService;
import com.zzxx.music.utils.FactoryUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CheckUserServlet")
public class CheckUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        UserService us = (UserService)FactoryUtils.getInstance("UserService");
        boolean isExists = us.checkUserIsExists(email);
//        boolean isExists =false;
        response.setContentType("text/plain;charset=utf-8");
        //{"isExists":}
        response.getWriter().write("{\"isExists\":" + isExists +"}");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
