package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 response.setContentType("text/html");
	 PrintWriter out=response.getWriter();
	    String name= request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String about=request.getParameter("about");
		
		try {
		HttpSession session=request.getSession();
		 User user=(User)session.getAttribute("currentUser");
         user.setName(name);
         user.setEmail(email);
         user.setPassword(password);
         user.setGender(gender);
         user.setAbout(about);
         
             UserDao dao=new UserDao(ConnectionProvider.getConnection() );
            boolean ans= dao.updateUser(user);
	     if(ans) {
	    	 out.println("Updated");
	     }
	     else {
	    	 out.println("not updated");
	     
         }
	}
         catch(Exception e) {
        	
        response.sendRedirect("error_page.jsp") ;
         }
         	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
