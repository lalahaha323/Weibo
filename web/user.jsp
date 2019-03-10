<%--
  Created by IntelliJ IDEA.
  User: lala
  Date: 19-3-10
  Time: 下午3:37
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8"
        import="java.util.*, java.text.*, cc.openhome.model.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta content='text/html;charset=UTF-8' http-equiv='content-type'>
    <title>Gossip 微网志</title>
    <link rel='stylesheet' href='member.css' type='text/css'>
</head>
<body>
<%
    List<Blah> blahs = (List<Blah>) request.getAttribute("blahs");
    if(blahs != null) {
%>
    <div class="leftPanel">
        <img src="caterpillar.jpg" alt="lala" />
        <br><br>${ requestScope.username } 的微博
    </div>
<table style="text-align: left; width: 510px; height: 88px;" border="0" cellpadding="2" cellspacing="2">
    <thead>
        <tr>
            <th><hr></th>
        </tr>
    </thead>
    <tbody>
        <%
            DateFormat dateFormat = DateFormat.getDateTimeInstance(
                    DateFormat.FULL, DateFormat.FULL, Locale.TAIWAN);
            for(Blah blah : blahs) {
        %>
            <tr>
                <td style="vertical-align: top;">
                    <%= blah.getUsername() %> <br>
                    <%= blah.getTxt() %><br>
                    <%= dateFormat.format(blah.getDate())%>
                    <hr>
                </td>
            </tr>
    <%
        }
    %>
    </tbody>
</table>
<hr style="width: 100%;height: 1px;">
<%
    } else {
%>
    <h1 style="color: rgb(255, 0, 0);">
        ${ requestScope.username } 用户不存在
    </h1>
<%
    }
%>
</body>
</html>
