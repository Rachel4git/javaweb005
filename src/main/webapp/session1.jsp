<%@ page import="eu.agrosense.api.session.Session" %><%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/15
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  session="true" %>
<%--如果在page指令中设置session="false"则不能在JSP页面汇总使用session对象--%>
<html>
<head>
    <title>session1</title>
</head>
<body>
<%--服务器接收用户请求时，先检索是否包含sessionID，如果有则按该ID检索出session使用，如果未检索出，则创建一个session并与该ID关联使用
如果没有，则创建一个session，并将sessionID以cookie的方式返回给服务器--%>
   <%=session.getId()%>
    <%--<%--%>
        <%--System.out.println("-----session1-----");--%>
        <%--HttpSession session1 = request.getSession();--%>
        <%--System.out.println("sessionid : "+session1.getId());--%>
        <%--System.out.println("sessionisnew : "+session1.isNew());--%>
        <%--session1.setMaxInactiveInterval(30);--%>
        <%--System.out.println("sessionMaxInactiveInterval : "+ session1.getMaxInactiveInterval());--%>
        <%--System.out.println("sessionLastAccessedTime : "+session1.getLastAccessedTime());--%>
        <%--session1.setAttribute("name","rachel");--%>
        <%--System.out.println("sessionattribute : "+session1.getAttribute("name"));--%>
        <%--System.out.println("----------");--%>


    <%--%>--%>

<a href="session2.jsp" name="session2">session2</a>
<a href="/sessionservlet" name="session3">session3</a>
</body>
</html>
