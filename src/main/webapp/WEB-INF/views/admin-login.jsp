<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.formcenter{
	margin-left : 550px;
	height : 300px;
	width : 400px;
	margin-top : 50px;
}

</style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark justify-content-end" style="color:black;">
  <p style="margin-right:850px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link" href="home" style="color:white;">User Login</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Admin Login</a>
  </li>
</ul>
 </nav>
<a href="user-list">Users</a>
<a href="feedback-list">FeedBack</a>
<a href="course-list">Courses</a>
<a href="contact-list">Contact</a>
<h3 style="text-align:center;margin-top:60px;font-family:Times new roman;font-weight:bold;">Admin Login</h3>
<div class="formcenter">
<form action="Admin-Login" method="post" modelAttribute="AdminLogin">
<div class="form-group">
  <label for="usr">Admin ID:  &nbsp;&nbsp;&nbsp;</label>
  <input type="text" id="usr" name="admin_id">
</div>
<div class="form-group">
  <label for="pwd">Password:&nbsp;&nbsp;&nbsp;&nbsp;</label>
  <input type="password" id="pwd" name="password">
</div>

<input type="submit" value="Login" class="btn btn-primary" style="margin-left:120px;">
</form><br>

</div>
</body>
</html>