<%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/15
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session2</title>
</head>
<body>
<%--若JSP不是客服访问的第一个页面 且其他页面已经创建了session，
则服务器不会为该页面创建session，而是把与当前回话相关的session传递给当前页面使用--%>
<%

    System.out.println("-----session2-----");
//    session的常用方法
//    获取session的两种方式
    System.out.println(request.getSession(false));
    System.out.println(request.getSession(true));
    HttpSession session1 = request.getSession();
//    获取sessionID
    System.out.println("sessionid : "+session1.getId());
//    判断session是否为新创建的
    System.out.println("sessionisnew : "+session1.isNew());
//    设置session的生存时间，过期会销毁session
//    session1.setMaxInactiveInterval(300);
//    获取session的生存时间
    System.out.println("sessionMaxInactiveInterval : "+ session1.getMaxInactiveInterval());
//    获取session的最后使用时间
    System.out.println("sessionLastAccessedTime : "+session1.getLastAccessedTime());

//    设置session属性
    session1.setAttribute("name","rachel..");
//    获取session属性
    System.out.println("sessionattribute : "+session1.getAttribute("name"));
    System.out.println("----------");
//    调用invalidate销毁session，销毁session后，再访问该页面会重新创建session
    session1.invalidate();

%>
</body>
</html>
