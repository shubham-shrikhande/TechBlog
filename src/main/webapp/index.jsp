<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.tech.blog.entities.User" errorPage="error_page.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tech Blog</title>



<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="CSS/mystyle.css"  rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
  .banner-background{
    	 clip-path: polygon(50% 0%, 76% 1%, 100% 1%, 100% 82%, 71% 100%, 44% 78%, 18% 86%, 0% 70%, 0% 35%, 0 0);
  }
</style>
</head>
<body>

<%@include file="normal_navbar.jsp" %>

<div class="Container-fluid p-0 m-0" >
     <div class="jumbotron" primary-background>
       <div class="container">
        <h3>Tech Blog</h3>
       <h3>Welcome , Friends </h3>
      
       <p>Welcome to Technical Blog, world of technology</p>
       <button class="btn btn-outline-dark btn-lg"><span class="fa fa-automobile"></span> Lets starts ! its free</button>
       <a href="login_page.jsp" class="btn btn-outline-dark btn-lg"><span class="fa fa-pencil "></span> Login</a>
       </div>
     </div>
   
</div>

 <div class="container">
   <div class="row mb-2">
        
      <div class="col-md-4">
      <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title"> Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background  text-while">Go somewhere</a>
  </div>
</div>
      </div>
      <div class="col-md-4">
      <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title"> Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background  text-while">Go somewhere</a>
  </div>
</div>
      </div>
      <div class="col-md-4">
      <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title"> Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background  text-while">Go somewhere</a>
  </div>
</div>
      </div>
 
    </div>
   <div class="row">
        
      <div class="col-md-4">
      <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title"> Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background  text-while">Go somewhere</a>
  </div>
</div>
      </div>
      <div class="col-md-4">
      <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title"> Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background  text-while">Go somewhere</a>
  </div>
</div>
      </div>
      <div class="col-md-4">
      <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title"> Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background  text-while">Go somewhere</a>
  </div>
</div>
      </div>
 
    </div>
 </div>


<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script>
    
</script>
</body>
</html>
