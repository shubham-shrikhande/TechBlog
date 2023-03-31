package com.tech.blog.entities;
public class Catagory {
    private int cid;
    private String name;
    private String description;
    
    public Catagory(int cid, String name, String description) {
    	this.cid=cid;
    	this.name=name;
    	this.description=description;
    }
    public Catagory() {
		
	}
    
    public void setCid(int cid) {
    	this.cid=cid;
    }
    public int getCid() {
    	return cid;
    }
    
    public void setName(String name) {
    	this.name=name;
    }
    public String getName() {
    	return name;
    }
    
    public void setDescription(String description) {
    	this.description=description;
    }
    public String getDescription() {
    	return description;
    }
}
