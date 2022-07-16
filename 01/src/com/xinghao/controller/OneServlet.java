package com.xinghao.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class OneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //全局作用域对象
        ServletContext application = request.getServletContext();
        //会话作用域对象
        HttpSession session = request.getSession();

        application.setAttribute("sid",10);
        session.setAttribute("sname","xinghao");
        //请求作用域对象
        request.setAttribute("home","earth");


        //请求转发
        request.getRequestDispatcher("/index_1.jsp").forward(request,response);
    }


}
