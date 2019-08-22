package com.zzxx.music.web.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.misc.BASE64Encoder;

@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//真实文件名
        String filename = request.getParameter("filename");
        String[] s = filename.split("/");
        filename = s[s.length - 1];
        System.out.println("filename:"+filename);
        //下载文件名
        String name = null;//

        String agent = request.getHeader("user-agent");

        //解决乱码
        if (agent.contains("MSIE") || agent.contains("TRIDENT") || agent.contains("EDGE")) {
            // IE浏览器
            name = URLEncoder.encode(filename, "utf-8");
            name = filename.replace("+", "%20");
        } else if (agent.contains("Firefox")) {
            // 火狐浏览器
            BASE64Encoder base64Encoder = new BASE64Encoder();
            name = "=?utf-8?B?"
                    + base64Encoder.encode(filename.getBytes("utf-8")) + "?=";
        } else {
            // 其它浏览器
            name = URLEncoder.encode(filename, "utf-8");
        }
        //设置响应头，告诉浏览器，这是附件，是让下载的，名字一定要是下载文件名
        response.setHeader("Content-Disposition","attachment;filename="+name);

        //获得环境
        ServletContext context = request.getServletContext();
        //通过环境，输入应用相对路径，获得真实路径
        String realPath = context.getRealPath("music/" + filename);
        System.out.println("realPath:"+realPath);
        InputStream is = new FileInputStream(realPath);
        ServletOutputStream os = response.getOutputStream();

        byte[] bys = new byte[1024];
        int len = -1;
        while((len = is.read(bys)) != -1){
            os.write(bys, 0, len);
        }

        is.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
