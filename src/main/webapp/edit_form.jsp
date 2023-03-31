<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.tech.blog.entities.User" errorPage="error_page.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit form</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="mystyle.css"  rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<%@include file="normal_navbar.jsp" %>
<%
 User user=(User)session.getAttribute("currentUser");
if(user==null){
	//session.removeAttribute("currentUser");
	//response.sendRedirect("no_user_found.jsp");
}

%>
<main class="primary-background">
   <div class="container">
     <div class="col-md-5 offset-md-4">
       <div class="card">
                <div class="card-header text-center"><span class="fa fa-3x fa-user-circle"></span><br><b> Edit Below </b></div>
                <div class="card-body">
                
                <form action="EditServlet" id="reg-form" method="post">
                 <div class="form-group">
    <label for="user_name">Edit name</label>
    <input type="text" name="name" class="form-control" id="user-name" aria-describedby="emailHelp" value=<%="presentUserData" %>>
  </div>
                
  <div class="form-group">
    <label for="exampleInputEmail1">Edit Email</label>
    <input type="email" name="email "class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value=<%="PresentUserData" %>>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Edit Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" value=<%="PresentUserData" %>>
  </div>
  
   <div class="form-group">
   <label for="gender">Select Gender</label><br>
    <input type="radio"   id="gender" aria-describedby="emailHelp" name="gender" value="male"> Male
    <input type="radio"   id="gender" aria-describedby="emailHelp" name="gender" value="female"> Female
  </div>
  
  <div class="form-group">
     <textarea name="about" name="about" class="form-control" id=""  rows="5" value=<%="PresentUserData" %>> </textarea>
  </div>
  
 
  <br>
  <div class="container text-center" id="loader" style="display:none;">
  <span class="fa fa-refresh fa-spin fa-2x"></span>Please Wait...<br><br>
   </div>
  <button id="submit-btn" type="submit" class="btn btn-primary">Save changes</button>
  <a href="profile.jsp" id="submit-btn" type="submit" class="btn btn-primary">Cancel</a>
  
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
<script>
    
</script>
</body>
</html>