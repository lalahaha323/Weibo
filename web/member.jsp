<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 19-3-10
  Time: 下午3:30
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.*, java.text.*, cc.openhome.model.Blah" %>
<%@page import="java.text.DateFormat" %>
<%
    String username = (String) request.getSession().getAttribute("login");
%>
<html>
<head>
    <meta content='text/html;charset=UTF-8' http-equiv='content-type'>
    <title>Gossip 微网志</title>
    <link rel='stylesheet' href='member.css' type='text/css'>
</head>
<body>
    <div class='leftPanel'>
        <img src='caterpillar.jpg' alt='Gossip 微网志' />
        <br><br>
        <a href='logout.do?username="${ sessionScope.login}'>
            注销${ sessionScope.login}</a>
    </div>
    <form method='post' action='message.do'>
        分享新鲜事...<br>
        <%
            String blabla = request.getParameter("blabla");
            if(blabla == null) {
                blabla = "";
            } else {
        %>
            信息要在140字以内<br>
        <%
            }
        %>
        <textarea cols='60' rows='4' name='blabla'>${ requestScope.blabla}</textarea><br>
        <button type='submit'>送出</button>
    </form>
    <table style='text-align: left; width: 510px; height: 88px;'
           border='0' cellpadding='2' cellspacing='2'>
        <thead>
        <tr>
            <th><hr></th>
        </tr>
        </thead>
        <tbody>
        <%
            DateFormat dateFormat = DateFormat.getDateTimeInstance(
                    DateFormat.FULL, DateFormat.FULL, Locale.TAIWAN);
            List<Blah> blahs = (List<Blah>) request.getAttribute("blahs");
            for(Blah blah : blahs) {
        %>
        <tr>
            <td style='vertical-align: top;'>
            <%= blah.getUsername() %> <br>
            <%= blah.getTxt() %> <br>
            <%= dateFormat.format(blah.getDate()) %>
                <a href="delete.do?message=<%=blah.getDate().getTime()%>">删除</a>
            <hr>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <hr style='width: 100%; height: 1px;'>
</body>
</html>
