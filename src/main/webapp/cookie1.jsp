<%@ page import="java.net.CookieHandler" %>
<%@ page import="com.github.jscookie.javacookie.Cookies" %><%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/14
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie</title>
</head>
<body>
    <%
        Cookie ck = null;
        Cookie[] cookies = request.getCookies();//获取cookie
        System.out.println(cookies);
        if(cookies!= null && cookies.length>0){
            for(Cookie c : cookies){
                System.out.println("name = " + c.getName() + ";  value = " +  c.getValue()+ "path = " + c.getPath()); //获取cookie键值对及作用范围

            }
            System.out.println(" ---------- ");
        }
        else{
            System.out.println(" no cookie " + System.currentTimeMillis());
            ck = new Cookie("name","rachel"); //创建cookie
            ck.setMaxAge(120); //设置最大时效
            ck.setPath(request.getContextPath()); //设置cookie作用范围
            response.addCookie(ck); //添加cookie
        }
    %>
</body>
</html>
