<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<title>Insert title here</title>
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
	<h3 style="text-align:center;margin-top:30px;font-family:Times new roman;font-weight:bold;">User Registration</h3>
	<hr>
	<div class="formcenter">
	<form:form action="register" method="POST" modelAttribute="user">
		<div class="form-group">
  			<label for="usr">User ID :  </label>
  				<input type="text" id="usr" name="user_id" style="margin-left:100px;">
		</div>
		<div class="form-group">
  			<label for="usr">Name :  </label>
  				<input type="text" id="usr" name="name" style="margin-left:110px;">
		</div>
		<div class="form-group">
  			<label for="usr">Phone Number:  </label>
  				<input type="text" id="usr" name="phone_no" style="margin-left:50px;">
		</div>
		<div class="form-group">
  			<label for="usr" >Email :        </label>
  				<input type="text" id="usr" name="email" style="margin-left:115px;">
		</div>
		<div class="form-group">
  			<label for="usr">Address : </label>
  				<input type="text" id="usr" name="address" style="margin-left:95px;">
		</div>
		<div class="form-group">
  			<label for="usr">Registration Date : </label>
  				<input type="text" id="usr" name="reg_date" style="margin-left:30px;">
		</div>
		<div class="form-group">
  			<label for="usr">Password :  </label>
  				<input type="password" id="usr" name="password" style="margin-left:90px;">
		</div>
		<div class="form-group">
  			<label for="usr">Upload File :  </label>
  				<input type="file" id="usr" name="upload" style="margin-left:75px;">
		</div>
       
                    <input type="submit" value="Register" class="btn btn-primary" style="margin-left:120px;"/> <input
				type="reset" value="Reset" class="btn btn-primary"/>

	</form:form></div>
</body>
</html>