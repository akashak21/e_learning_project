<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<title>Feedback</title>
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
  <p style="margin-right:650px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link" href="course-list" style="color:white;">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="user-list" style="color:white;">User</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Contact</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="feedback-list" style="color:white;">Feedback</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="home" style="color:white;">Logout</a>
  </li>
</ul>
 </nav><br>
	<h3 style="text-align:center;margin-top:30px;font-family:Times new roman;font-weight:bold;">User Feedback</h3>
	<hr>
	<div class="formcenter">
	<form:form action="registerfeedback" method="POST" modelAttribute="feedback">
		<div class="form-group">
  			<label for="usr">User ID :  </label>
  				<form:input id="usr" path="user_id" style="margin-left:90px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Name :  </label>
  				<form:input id="usr" path="name" style="margin-left:100px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Email :  </label>
  				<form:input id="usr" path="email" style="margin-left:105px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Feedback :  </label>
  				<form:input id="usr" path="feedback" style="margin-left:75px;"/>
		</div>
       
                    <input type="submit" value="Submit" class="btn btn-primary" style="margin-left:120px;"/> <input
				type="reset" value="Reset" class="btn btn-primary"/>
        
	</form:form>
	</div>
</body>
</html>