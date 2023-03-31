package com.tech.blog.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.tech.blog.entities.Catagory;
import com.tech.blog.entities.Post;

public class PostDao {
	
	Connection con;
	public PostDao(Connection con) {
     this.con=con;
	}
	public ArrayList<Catagory> getAllCatagories(){ 
        
		ArrayList<Catagory> list=new ArrayList<>();
        
		try {
              String q="select * from catagories";
              Statement st=(Statement) this.con.createStatement();
              ResultSet set=((java.sql.Statement) st).executeQuery(q);
              while(set.next()) {
            	  int cid=set.getInt("cid");
            	  String name=set.getString("name");
            	  String description=set.getNString("description");
            	  Catagory c= new Catagory(cid,name,description);
            	  list.add(c);
            	  
              }
          }
		      catch(Exception e) {
			e.printStackTrace();
		}
		   return list;
}
	 public boolean savePost(Post p) {
		 boolean flag=false;
		 	try {
		 		String query="insert into posts(pTitle, pContent,pCode,pPic,catId,userId) values(?,?,?,?,?,?)";
		 		PreparedStatement pst=con.prepareStatement(query);
		 		pst.setString(1, p.getPTitle());
		 		pst.setString(2, p.getPContent());
		 		pst.setString(3, p.getPCode());
		 		pst.setString(4, p.getPPic());
		 		pst.setInt(4, p.getCatId());
		 		pst.setInt(4, p.getUserId());
		 		pst.executeUpdate();
		 		flag=true;
		 	}
		 	catch(Exception e) {
		 		e.printStackTrace();
		 	}
		 	return flag;
	 }
	 public List<Post> getAllPosts(){
		  
			List<Post> list = null;
			try {
				String query="select * from posts";
				PreparedStatement st=con.prepareStatement(query);
				ResultSet rs=st.executeQuery();
				while(rs.next()){
					
				int pid=rs.getInt("pid");
			    String pTitle= rs.getString("pTitle");
			    String pContent=rs.getString("pContent");
			    String pCode=rs.getString("pCode");
			    String pPic=rs.getString("pPic");
			    Timestamp date=rs.getTimestamp("pDate");
			    int userId=rs.getInt("userId");
			    int catId=rs.getInt("catid");
			    Post post=new Post(pid,pTitle,pContent,pCode,pPic,date,catId,userId);
			  
				list.add(post);
				
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		public List<Post> getPostById(int catId){
			List<Post> list = null;
			
			try {
				String query="select * from posts where catId=?";
				PreparedStatement st=con.prepareStatement(query);
				st.setInt(1, catId);
				ResultSet rs=st.executeQuery();
				while(rs.next()){
					
				int pid=rs.getInt("pid");
			    String pTitle= rs.getString("pTitle");
			    String pContent=rs.getString("pContent");
			    String pCode=rs.getString("pCode");
			    String pPic=rs.getString("pPic");
			    Timestamp date=rs.getTimestamp("pDate");
			    int userId=rs.getInt("userId");
			    
			    Post post=new Post(pid,pTitle,pContent,pCode,pPic,date,catId,userId);
			  
				list.add(post);
				
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
		}
	
	}