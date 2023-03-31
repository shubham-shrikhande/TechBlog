package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.ErrorMessage;
import com.tech.blog.helper.ConnectionProvider;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String userName=request.getParameter("email");
		String userPassword=request.getParameter("password");
		
		UserDao dao= new UserDao(ConnectionProvider.getConnection());
	    User u=(User) dao.getUserByEmailAndPassword(userName,userPassword);
		if(u==null) {
			ErrorMessage message=new ErrorMessage("Wrong Credentials !! Plese re-enter.");
			
			HttpSession session=request.getSession();
			session.setAttribute("error_message", message);
			response.sendRedirect("login_error_page.jsp");
			
		}
		else {
			
			HttpSession s=request.getSession();
			s.setAttribute("currentUser",u);
			response.sendRedirect("profile.jsp");
			
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
