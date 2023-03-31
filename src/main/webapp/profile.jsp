
<!DOCTYPE html>

<%@page import="com.tech.blog.entities.Catagory"%>
<%@page import="com.tech.blog.entities.User" errorPage="error_page.jsp" %>

<%@page import="com.tech.blog.helper.*"%>
<%@page import="com.tech.blog.dao.*" %>
<%@page import="java.util.ArrayList" %>
<%
 User user=(User)session.getAttribute("currentUser");
if(user==null){
	//session.removeAttribute("currentUser");
	//response.sendRedirect("no_user_found.jsp");
}

%>


<html>
<head>
<meta charset="UTF-8">
<title>User Name Here </title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="CSS/mystyle.css"  rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light primary-background">
  <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span> TechBlog <span class="fa fa-asterisk"></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><span class="fa fa-bell-o"></span> Home<span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <span class="fa fa-filter"></span> Catagories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Programming Language</a>
          <a class="dropdown-item" href="#">Project Implementation</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Data Structure</a>
        </div>
      </li>
     <li class="nav-item">
        <a class="nav-link" href="#"><span class="fa fa-envelope-open"></span> Contact</a>
    </li>
     <li class="nav-item">
        <a class="nav-link" href="#"  data-toggle="modal"  data-target=#add-post-modal><span class="fa fa-envelope-open"></span> Post</a>
    </li>
    </ul>
    <ul class="navbar-nav mr-right">
    
    <li class="nav-item">
        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></span>User Name</a>
      </li> 
        <li class="nav-item">
        <a class="nav-link" href="logout_user.jsp"><span class="fa fa-paper-plane-o"></span> Logout</a>
      </li>
    </ul>
  </div>
</nav>




<!--Main body of the page  -->
<main>
 <div class="container">
    <div class="row mt-4">  
         <!--first col  -->
         <div class="col-md-4">
         <div class="list-group">
  <a href="open_all_post.jsp" class="list-group-item list-group-item-action active">
    All Post
  </a>
  <%
  

  PostDao postd=new PostDao(ConnectionProvider.getConnection());
  ArrayList<Catagory> list= postd.getAllCatagories();
  for(Catagory c:list){}
  
  %>

  <a href="#" class="list-group-item list-group-item-action">Java Programming</a>
  <a href="#" class="list-group-item list-group-item-action">Python Programming</a>
  <a href="#" class="list-group-item list-group-item-action">Politics</a>
  <a href="#" class="list-group-item list-group-item-action disabled">Other</a>
</div>
         </div>
           <!--second col  -->
          <div class="col-md-8" >
          <div class="container text-center" id="loader">
             <i class="fa fa-refresh fa-4x fa-spin"></i>
             <h3 class="mt-2"> loading...</h3>
             </div>
             <div class="container-fluid" id="post-container">
             
             </div>
         </div>
    </div>
 </div>

</main>

<!--End of Main body of the page  -->

<div class="container" align="center" >
  
  
</div>

<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <div> 
        <h5 class="modal-title" id="exampleModalLabel">Your ch name id</h5>
        
        <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">Name</th>
      <td>User Name</td>
     
    </tr>
    <tr>
      <th scope="row">Email</th>
      <td>User EmailID</td>
    
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td>Gender</td>
     
    </tr>
    <tr>
      <th scope="row">Status</th>
      <td>About</td>
     
    </tr>
  </tbody>
</table>
        
        
     </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a type="button" class="btn btn-primary" href="edit_form.jsp">Edit</a>
      </div>
    </div>
  </div>
</div>




<!-- Modal -->
<div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Post Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <form  id="add-post-form" action="AddPostServlet" method="post">
        <select class="form-control" name="cid">
          <option selected disabled>select cat...</option>
        
          
          <option>cat2</option>
          <option>cat3</option>
          <option>cat4</option>
          
         	
        </select></br>
       
        <div class="form-group">
        <input type="text" name="pTitle" placeholder="Enter Post Title" class="form-control"/>
        
        </div class="form-group">
          <textarea class="form-control" name="pContent" style="height:200px" placeholder="Enter your content"></textarea>
        <div>
        </div class="form-group">
          <textarea class="form-control" name="pCode" style="height:200px" placeholder="Enter your Program"></textarea>
        <div>
          <div class="form-group">
          <label>Upload picture </label><br>
          <input type="file" name="pic" >
          </div>
          
        </div>
        <div class="container" text="center">
          <button type="submit" class="btn btn-outline-primary">Post</button>
        </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
<script>
    $(document).ready(fuction (e){
    	
    	$("#add-post-form").on("submit",fuction(event){
    		event.preventDefault();
    		console.log("you have clicked on submit");
    		let form=new FormData(this);
    		
    		$.ajax({
    			url:"AddPostServlet",
    			type:'POST',
    			data:form,
    			success:fuction (data,textStatus,jqXHR){
    				
    			},
    		error: fuction (jqXHR , textStatus, errorThrown){
    			
    			
    		},
    		processData:false,
    		contentType:false
    		})
    		
    	})
    })
</script>
<script >
   $(document).ready(function (e){
	   
	   $.ajax({
		 url:"open_all_post.jsp"
		 success: fuction (data, textStatus, jqXHR){
			 console.log(data);	
			 $("#loader").hide();
			 $('#post-container').html(data)
		 }
	   })
   })
</script>

</body>
</html>