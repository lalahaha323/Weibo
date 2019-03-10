<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 19-3-10
  Time: 下午5:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cc.openhome.model.UserService" %>
<%@ page import="cc.openhome.model.Blah" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>删除</title>
</head>
<body>
    <%
        String username = (String) request.getSession().getAttribute("login");
        String message = request.getParameter("message");
        UserService userService = (UserService) getServletConfig().getServletContext().getAttribute("userService");
        Blah blah = new Blah();
        blah.setUsername(username);
        blah.setDate(new Date(Long.parseLong(message)));
        userService.deleteBlah(blah);
        response.sendRedirect("member.jsp");
    %>
</body>
</html>
