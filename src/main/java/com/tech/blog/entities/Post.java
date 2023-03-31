package com.tech.blog.entities;

import java.sql.Timestamp;

public class Post {
     private int pid;
     private String pTitle;
     private String pContent;
     private String pCode;
     private String pPic;
     private Timestamp pDate;
     private int catId;
     private int userId;
    
     public Post(int pid,String pTitle,String pContent, String pCode, String pPic, Timestamp pDate, int catId, int userId ) {
    	 
    	 this.pid=pid;
    	 this.pTitle=pTitle;
    	 this.pContent=pContent;
    	 this.pCode=pCode;
    	 this.pPic=pPic;
    	 this.pDate=pDate;
    	 this.catId=catId;
    	 this.userId=userId;
     }
     public void setPid(int pid) {
    	 this.pid=pid;
     }
     public int getPid() {
    	 return pid;
     }
     public void setPTitle(String pTitle) {
    	 this.pTitle=pTitle;
     }
     public String getPTitle() {
    	 return pTitle;
     }
     public void setPContent(String pContent) {
    	 this.pContent=pContent;
     }
     public String getPContent() {
    	 return pContent;
     }
     public void  setPCode(String pCode) {
    	 this.pCode=pCode;
     }
     public String getPCode() {
    	 return pCode;
     }
     public void getPPic(String pPic) {
    	 this.pPic=pPic;
     }
     public String getPPic() {
    	 return pPic;
     }
     public void setPDate(Timestamp pDate) {
    	 this.pDate=pDate;
     }
     public Timestamp getPDate() {
    	 return pDate;
     }
     public void setCatId(int catId)
     {
    	 this.catId=catId;
     }   
     public int getCatId() {
    	 return catId;
     }
     public void setUserId(int userId) {
    	 this.userId=userId;
     }
     public int getUserId() {
    	 return userId;
     }
}
