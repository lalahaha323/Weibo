<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 19-3-10
  Time: 下午3:34
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Gossip 微网志</title>
</head>
<body>
    <c:if test="${requestScope.errors != null}">
        <h1>新增会员失败</h1>
        <ul style='color: rgb(255, 0, 0);'>
            <c:forEach var="error" items="${requestScope.errors}">
                <li>${error}</li>
            </c:forEach>
        </ul><br>
    </c:if>
    <h1>会员注册</h1>
    <form method='post' action='register.do'>
        <table bgcolor=#cccccc>
            <tr>
                <td>邮件位址：</td>
                <td><input type='text' name='email' value='${param.email}' size='25' maxlength='100'>
                </td>
            </tr>
            <tr>
                <td>名称（最大16字符）：</td>
                <td><input type='text' name='username' value='${param.username}' size='25' maxlength='16'></td>
            </tr>
            <tr>
                <td>密码（6到16字符）：</td>
                <td><input type='password' name='password' size='25' maxlength='16'>
                </td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type='password' name='confirmedPasswd' size='25' maxlength='16'></td>
            </tr>
            <tr>
                <td colspan='2' align='center'><input type='submit' value='注册'></td>
            </tr>
        </table>
    </form>
</body>
</html>