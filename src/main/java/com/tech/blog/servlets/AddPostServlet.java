package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.dao.PostDao;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

@WebServlet("/AddPostServlet")
public class AddPostServlet extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	int cid=Integer.parseInt(request.getParameter("cid"));
	String pTitle=request.getParameter("pTitle");
	String pContent=request.getParameter("pContent");
	String pCode=request.getParameter("pCode");
	Part part=request.getPart("pic");
	
	HttpSession session=request.getSession();
	User user= (User) session.getAttribute("currentUser");
	
	Post p= new Post(cid, pTitle,pContent,pCode,part.getSubmittedFileName(), null,cid, user.getUserId());
	PostDao dao=new PostDao(ConnectionProvider.getConnection());
	if(dao.savePost(p)) {
		out.println("done");
		String msg="Post saved successfully !!";
		request.setAttribute("message", msg);
		response.sendRedirect("profile.jsp");
		
		
	}
	
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
