<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.tech.blog.entities.User" errorPage="error_page.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>


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
 
<main class="primary-background">
   <div class="container">
     <div class="col-md-5 offset-md-4">
       <div class="card">
                <div class="card-header text-center"><span class="fa fa-3x fa-user-circle"></span><br> Register here</div>
                <div class="card-body">
                
                <form action="registerservlet" id="reg-form" method="post">
                 <div class="form-group">
    <label for="user_name">User name</label>
    <input type="text" name="name" class="form-control" id="user-name" aria-describedby="emailHelp" placeholder="Enter name">
  </div>
                
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email "class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
   <div class="form-group">
   <label for="gender">Select Gender</label><br>
    <input type="radio"   id="gender" aria-describedby="emailHelp" name="gender" value="male"> Male
    <input type="radio"   id="gender" aria-describedby="emailHelp" name="gender" value="female"> Female
  </div>
  
  <div class="form-group">
     <textarea name="about" name="about" class="form-control" id=""  rows="5" placeholder="Enter something about yourself."> </textarea>
  </div>
  
  <div class="form-check">
    <input type="checkbox" name="check" class="check" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1"> Agree terms and conditions</label>
  </div>
  <br>
  <div class="container text-center" id="loader" style="display:none;">
  <span class="fa fa-refresh fa-spin fa-2x"></span>Please Wait...<br><br>
   </div>
  <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
  
</form>
                </div>
              
         
       </div>
     </div >
   </div>
</main>

<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
     $(document).ready(function(){
    	 console.log("loaded...")
    	 
    	 $('#reg-form').on('submit',function(event){
    		 event.preventDefault();
    		 
    		 let form=new formData(this);
    		 $("#submit-btn").hide(); 
    		 $("#loader").show();
    		 $.ajax({
    			url:"registerservlet",
    			type:'post',
    			data: 'form	'
    			success: function (data,textstatus,jqXHR){
    				console.log(data)
    				 $("#submit-btn").show(); 
    	    		 $("#loader").hide();
    	    		 swal("Done")
    	    		 .then((value) => {
    	    		   window.location="login_page.jsp"
    	    		 });
    			},
    			error:function(jqXHR,textstatus,errorThrown){
    				swal("Something went wrong ...")
    				
    			},
    			processData:false,
    			contentType:false
    		 });
    	 });
     });
    
</script>

</body>
</html>