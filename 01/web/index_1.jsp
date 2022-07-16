<%--
  Created by IntelliJ IDEA.
  User: xinghao
  Date: 2022/7/17
  Time: 1:03 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--传统的jsp书写方式--%>
<%
    Integer sid =(Integer) application.getAttribute("sid");
    String sname = (String) session.getAttribute("sname");
    String home = (String) request.getAttribute("home");
%>
学员ID：<%=sid%><br>
学员姓名：<%=sname%><br>
学员地址：<%=home%>
<hr>
<%--El书写方式--%>

学员ID：${applicationScope.sid} <br>
学员姓名：${sessionScope.sname} <br>
学员地址：${requestScope.home}
