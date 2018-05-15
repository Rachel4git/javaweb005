<%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/15
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session4</title>
</head>
<body>
<%--如果不使用encodeURL，在浏览器禁用cookie的情况下，每次访问访问session1.jsp时，
浏览器无法将sessionID传递给服务器，服务器都会新生成一个sessionID--%>
<%--<a href="session1.jsp">session1</a>--%>
<%--使用encodeURL之后，在浏览器禁用cookie的情况下，访问session1.jsp时，会将session以参数的形式添加在URL后面，如下：
http://localhost:8080/session1.jsp;jsessionid=3FA409B9ABE4253F0916653AA9BB1293--%>
    <a href="<%=response.encodeURL("session1.jsp")%>">session1</a>
<%--encodeURL与encoderedirectURL功能相同--%>
    <a href="<%=response.encodeRedirectURL("session1.jsp")%>">session1</a>



</body>
</body>
</html>
