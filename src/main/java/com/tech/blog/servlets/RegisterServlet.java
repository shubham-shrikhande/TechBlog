package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@MultipartConfig
@WebServlet("/registerservlet")
public class RegisterServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
		String check= request.getParameter("check");
		
		if(check==null) {
			out.print("Box not checked ");
		}
		else {
			String name= request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String gender=request.getParameter("gender");
			String about=request.getParameter("about");
			
		    User user= new User(name,password,email,about,gender);
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			boolean flag=dao.SaveUser(user);
			if(flag) {
				out.print("Done");
			}
			else {
		       out.println("Error");
		}
	}}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
