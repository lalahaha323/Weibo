<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 19-3-10
  Time: 下午4:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.List" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>新增会员失败</title>
</head>
<body>
    <h1>新增会员失败</h1>
    <ul style="color: rgb(255, 0, 0);">
        <%
            List<String> errors = (List<String>) request.getAttribute("errors");
            for(String error : errors) {
        %>
            <li><%= error %></li>
        <%
            }
        %>
    </ul>
    <a href="register.jsp">返回注册页面</a>
</body>
</html>
