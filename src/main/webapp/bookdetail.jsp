<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/15
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>bookdetail</title>
</head>
<body>
    book:
    <%=
    request.getParameter("bookname")
    %>
    <br>

    <a href="book.jsp">return</a>
    <%
        String book = request.getParameter("bookname");
        Cookie[] cookies = request.getCookies();
        List<Cookie> cookieList = new ArrayList();
        Cookie cookie = null;
        if(cookies!=null&&cookies.length>0){
            for(Cookie c :cookies){
                if(c.getName().startsWith("atrachel")){
                    cookieList.add(c);
                }
                if(book.equals(c.getValue())){
                    cookie=c;
                }
            }
        }

//        cookieList.size()<5 直接添加
//        cookieList.size()>5 删除一个再添加
//        cookie !=null，传入的在cookie列表中，删除该cookie
//
//        cookie=null,传入的不在cookie列表中,删除第一个cookie
//
        if(cookieList.size()>4 && cookie == null){
            cookie = cookieList.get(0);
        }
        if(cookie!=null){
//          两步完成删除
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }

//            添加cookie
        cookie= new Cookie("atrachel"+book,book);
        response.addCookie(cookie);

//        request.getRequestDispatcher("book.jsp").forward(request,response);
        System.out.println(request.getParameter("bookname"));
    %>
</body>
</html>
