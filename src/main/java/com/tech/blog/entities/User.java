package com.tech.blog.entities;
import java.sql.*;
public class User {
 private int id;
 private String name;
 private String email;
 private String password;
 private String about;
 private String gender;
 private Timestamp dateTime;
 private int userId;

 
 
 public User(int id, String name, String password, String email, String about, String gender) {
	 this.id=id;
	 this.name=name;
	 this.email=email;
	 this.password=password;
	 this.about=about;
	 this.gender=gender;
	 this.userId=userId;
	
} 
 public User(String name, String password, String email, String about, String gender) {

	 this.name=name;
	 this.email=email;
	 this.password=password;
	 this.about=about;
	 this.gender=gender;
	
	 
 } 
 public User() {
	
 } 
 public String getName() {
	 return name;
 }
  public void setName(String name) {
	  this.name=name;
  }
  
  public String getEmail() {
	  return email;
  }
  public void setEmail(String email) {
	  this.email=email;
  }
  
  public String getPassword() {
	  return password;
  }
  public void setPassword(String string) {
	  this.password=password;
  }
  
  public String getAbout() {
	  return about;
  }
  public void setAbout(String about) {
	  this.about=about;
  }
  
  public String getGender() {
	  return gender;
  }
  public void setGender(String gender) {
	  this.gender=gender;
  }
  
  public Timestamp getDateTime() {
	  return dateTime;
  }
  public void setDateTime(Timestamp dateTime) {
	   this.dateTime=dateTime;
  }
  public void setUserId(int userId) {
	  this.userId=userId;
  }
  public int getUserId() {
	  return userId;
  }
}
