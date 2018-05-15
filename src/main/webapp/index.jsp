<%@ page contentType="text/html;charset=UTF-8" language="java"  session="false" %>

<html>
<body>
<h2>Hello World!</h2>

<%
  //
    String name = request.getParameter("name");
    if(name != null && name.length()>0){
        Cookie ck = new Cookie("name",name);
        ck.setMaxAge(300);
        response.addCookie(ck);
    }
    else {
        Cookie[] cookies = request.getCookies();
        cookies = request.getCookies();
        if(cookies !=null && cookies.length>0){
            for(Cookie c :cookies){
                if("name".equals(c.getName()))
                    name = c.getName();
            }
        }
    }

    if(name !=null && name.length()>0){
        response.getWriter().print("welcome back :" +name);
    }
    else
        response.sendRedirect("login.jsp");


%>
</body>
</html>
