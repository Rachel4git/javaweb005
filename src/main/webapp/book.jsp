<%--
  Created by IntelliJ IDEA.
  User: hd48552
  Date: 2018/5/15
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>book</title>
</head>
<body>

图书列表，请点击查看详情！
<br>
<a href="bookdetail.jsp?bookname=javase" name="javase">javase</a>
<br>
<a href="bookdetail.jsp?bookname=html" name="html">html</a>
<br>
<a href="bookdetail.jsp?bookname=javascrip" name="javascrip">javascrip</a>
<br>
<a href="bookdetail.jsp?bookname=css" name="css">css</a>
<br>
<a href="bookdetail.jsp?bookname=python" name="python">python</a>
<br>
<a href="bookdetail.jsp?bookname=c" name="c">c</a>
<br>
<a href="bookdetail.jsp?bookname=c" name="c++">c++</a>
<%--//直接赋值：bookname=c++，报错“+为保留字符”,待解决--%>
<br>
<a href="bookdetail.jsp?bookname=javaweb" name="javaweb">javaweb</a>
<br>
<a href="bookdetail.jsp?bookname=xml" name="xml">xml</a>
<br>
<a href="bookdetail.jsp?bookname=javaee" name="javaee">javaee</a>
<br>
<br>
最近浏览的商品：

<%
   Cookie[] cookies = request.getCookies();
   if(cookies!=null&&cookies.length>0){
       for(Cookie ck:cookies){
           if(ck.getName().startsWith("atrachel")){
               out.println(ck.getValue());
           }

       }
   }
%>




</body>
</html>
