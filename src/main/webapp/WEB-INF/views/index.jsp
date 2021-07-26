   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
    <a class="nav-link" href="#" style="color:white;">User Login</a>
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
<h3 style="text-align:center;margin-top:60px;font-family:Times new roman;font-weight:bold;">User Login</h3>
<div class="formcenter">
<form action="User-Login" method="post" modelAttribute="UserLogin">
<div class="form-group">
  <label for="usr">User ID:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
  <input type="text" id="usr" name="user_id">
</div>
<div class="form-group">
  <label for="pwd">Password:&nbsp;&nbsp;&nbsp;</label>
  <input type="password" id="pwd" name="password">
</div>

<input type="submit" value="Login" class="btn btn-primary" style="margin-left:120px;">

</form><br>
<p style="margin-left:40px;">Doesn't have a Login?..<a href="addUser">Register</a>
</div>
</body>

</html>