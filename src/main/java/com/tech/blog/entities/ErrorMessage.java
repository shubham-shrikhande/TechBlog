package com.tech.blog.entities;

public class ErrorMessage {
     private String message=null;
   
     
     public ErrorMessage(String message) {
		this.message=message;
	}
    
     
     public void setMessage(String message){
    	 this.message=message;
     }
    
     
     public String getMessage() {
    	 return message;
     }
   
}
