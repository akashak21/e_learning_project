<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
th,td{
	width : 100px;
	height : 50px;
	text-align : center;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark justify-content-end" style="color:black;">
  <p style="margin-right:600px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
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
    <a class="nav-link" href="#" style="color:white;">Admin Login</a>
  </li>
</ul>
 </nav><br>
 <h3 style="text-align:center;margin-top:40px;font-family:Times new roman;font-weight:bold;">User Details</h3><br>
 
<table align="center">
<tr>
<th>User ID</th>
<th>Name</th>
<th>Phone Number</th>
<th>Email</th>
<th>Address</th>
<th>Registration Date</th>
<th>Uploaded File</th>
<th>Actions</th>
</tr>
<c:forEach var="user" items="${list }">
<tr>
<td>${user.user_id }</td>
<td>${user.name }</td>
<td>${user.phone_no }</td>
<td>${user.email }</td>
<td>${user.address }</td>
<td>${user.reg_date }</td>
<td>${user.upload }</td>
<td><a href="<c:url value='/delete-user/${user.user_id }'/>"><i class='fas fa-trash-alt'></i></a>
					| <a href="<c:url value='/update-user/${user.user_id }'/>"><i class='far fa-edit' ></i></a></td>
</tr>
</c:forEach>
</table>
<br>
<a href="addUser"><input type="submit" value="Add User" class="btn btn-primary" style="margin-left:620px;">
</a>
</body>
</html>