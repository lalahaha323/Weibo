<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 19-3-6
  Time: 下午4:03
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>BP</title>
    <link rel="stylesheet" href="index.css" type="text/css">
  </head>
  <body>
    <div class="leftPanel">
      <img src="caterpillar.jpg" alt="lala"/>
    </div>
    <div>
      <h1>lala...</h1>
        <ul>
          <li>lala
          <li>haha
          <li>kaka
        </ul>
    </div>
  <div>
    <a href="register.jsp">还不是会员？</a><p>
    <div style="color: rgb(255, 0, 0);">${ requestScope.error }</div>
    <form method="post" action="login.do">
      <table bgcolor="#8a2be2">
        <tr>
          <td colspan="2">会员登入</td>
        </tr>
        <tr>
          <td>名称：</td>
          <td><input type="text" name="username" value="${ param.username}"></td>
        </tr>
        <tr>
          <td>密码：</td>
          <td><input type="password" name="password"></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" value="登入"></td>
        </tr>
        <tr>
          <td colspan="2"><a href="forgot.html">忘记密码?</a></td>
        </tr>
      </table>
    </form>
  </div>
  </body>
</html>
