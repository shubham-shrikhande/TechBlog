package com.tech.blog.helper;
import java.sql.*;
public class ConnectionProvider {
  public static Connection con;
   public static Connection getConnection() {
	     try {
	    	 if(con==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
		     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Shubham@123");
		   
	     }}
	   catch(Exception e) {
		e.printStackTrace();
		System.out.println("Here is the exception raised");
	   }
	   return con;
   }
}
