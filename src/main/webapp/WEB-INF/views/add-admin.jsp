<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
.formcenter{
	margin-left : 500px;
	height : 600px;
	width : 500px;
	margin-top : 50px;
}

</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark justify-content-end" style="color:black;">
  <p style="margin-right:550px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link" href="course-list-admin" style="color:white;">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-user-list" style="color:white;">User</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-contact-list" style="color:white;">Contact</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-feedback-list" style="color:white;">Feedback</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Courses</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-view-list" style="color:white;">Admin</a>
  </li>
</ul>
 </nav><br>
	<h3 style="text-align:center;margin-top:30px;font-family:Times new roman;font-weight:bold;">Add Admin</h3>
	<hr style="width:50%;" align=center>
	<div class="formcenter">
	<form:form action="registeradmin" method="POST" modelAttribute="admin">
		<div class="form-group">
  			<label for="usr">Admin ID :  </label>
  				<form:input id="usr" path="admin_id" style="margin-left:70px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Name :  </label>
  				<form:input id="usr" path="name" style="margin-left:93px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Email Id :  </label>
  				<form:input id="usr" path="email" style="margin-left:80px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Password :  </label>
  				<form:input type="password" id="usr" path="password" style="margin-left:68px;"/>
		</div>
        
                    <input type="submit" value="Add Admin" class="btn btn-primary" style="margin-left:90px;"/> <input
				type="reset" value="Reset" class="btn btn-primary"/>
 
	</form:form>
	</div>
</body>
</html>