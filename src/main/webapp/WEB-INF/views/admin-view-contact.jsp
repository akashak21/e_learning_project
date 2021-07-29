<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
  <p style="margin-right:500px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link" href="course-list-admin" style="color:white;">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-user-list" style="color:white;">User</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Contact</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-feedback-list" style="color:white;">Feedback</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="addCourse" style="color:white;">Courses</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Admin</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="home" style="color:white;">Logout</a>
  </li>
</ul>
 </nav><br>
 <h3 style="text-align:center;margin-top:40px;font-family:Times new roman;font-weight:bold;">User Contact Details</h3><br>
 <hr>
<table align="center">
<tr>
<th>User ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone Number</th>
<th>Message</th>
<th>Contact Id</th>
</tr>
<c:forEach var="contact" items="${list }">
<tr>
<td>${contact.user_id }</td>
<td>${contact.name }</td>
<td>${contact.email }</td>
<td>${contact.phone_no }</td>
<td>${contact.message }</td>
<td>${contact.contact_id }</td>
</tr>
</c:forEach>
</table>
</body>
</html>