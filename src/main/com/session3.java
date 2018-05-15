package main.com;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by hd48552 on 2018/5/15.
 */
public class session3 extends HttpServlet {
    @Override
    public  void doGet(HttpServletRequest request, HttpServletResponse response){
//        在servlet中，调用request.getSession方法，会创建session
        HttpSession session1 = request.getSession();


        System.out.println("-----session3-----");

        System.out.println("sessionid : "+session1.getId());
        System.out.println("sessionisnew : "+session1.isNew());
//        session1.setMaxInactiveInterval(30);
        System.out.println("sessionMaxInactiveInterval : "+ session1.getMaxInactiveInterval());
        System.out.println("sessionLastAccessedTime : "+session1.getLastAccessedTime());
        session1.setAttribute("name","rachel...");
        System.out.println("sessionattribute : "+session1.getAttribute("name"));
        System.out.println("----------");

    }
}
