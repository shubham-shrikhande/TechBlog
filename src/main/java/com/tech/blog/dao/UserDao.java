package com.tech.blog.dao;
import java.sql.*;
import java.util.List;

import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
public class UserDao {
	private Connection con;
	private String about;
	
	public UserDao(Connection con) {
		this.con=con;
		
	}
	
	public boolean SaveUser(User user) {
		 boolean flag=false;
   try {
	  
	   String sqlQuery="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
		PreparedStatement st=this.con.prepareStatement(sqlQuery);
        st.setString(1,user.getName());
        st.setString(2,user.getEmail());
        st.setString(3,user.getPassword());
        st.setString(4,user.getGender());
        st.setString(4,user.getAbout());
       
        st.executeUpdate();
        flag=false;
        
        
   }
   catch (Exception e) {
	e.printStackTrace();
   }
return flag;
}
	public User getUserByEmailAndPassword(String email,String password) {
		User user=null;
		try {
		String query="select * from user where email=? and password=?";
		PreparedStatement st=con.prepareStatement(query); 
		st.setString(1,email);
		st.setString(2,password);
		ResultSet rs=st.executeQuery();
		
		if(rs.next()) {
		user=new User();
		String name=rs.getString("name");
		user.setName(name);
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("password"));
		user.setAbout(rs.getString("about"));
	
		}
		}
	catch(Exception e) {
		e.printStackTrace();
	}
		return user;
	}
	public  boolean updateUser(User user) {
		boolean flag=false;
		try {
		String query="update user set name=? ,email=? , password=?, gender=?, about=? where password=?" ;
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, user.getName());
		st.setString(2, user.getEmail());
		st.setString(3, user.getPassword());
		st.setString(4, user.getGender());
		st.setString(5, user.getAbout());
		st.setString(6, user.getPassword());
		st.executeUpdate();
		flag=true;
		}
	catch(Exception e) {
		e.printStackTrace();
	}
		return flag;
	}

}
