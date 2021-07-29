<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Feedback</title>
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
  <p style="margin-right:500px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
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
    <a class="nav-link" href="#" style="color:white;">Feedback</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="course-list-admin" style="color:white;">Courses</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-view-list" style="color:white;">Admin</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="home" style="color:white;">Logout</a>
  </li>
</ul>
 </nav><br>
  <h3 style="text-align:center;margin-top:40px;font-family:Times new roman;font-weight:bold;">User Feedback Details</h3><br>
 
<table align="center">
<tr>
<th>Feedback Id</th>
<th>User ID</th>
<th>Name</th>
<th>Email</th>
<th>Feedback</th>
<th>Actions</th>
</tr>
<c:forEach var="feedback" items="${list1 }">
<tr>
<td>${feedback.f_id }</td>
<td>${feedback.user_id }</td>
<td>${feedback.name }</td>
<td>${feedback.email }</td>
<td>${feedback.feedback }</td>
<td><a href="<c:url value='/admin-delete-feedback/${feedback.f_id }'/>"><i class='fas fa-trash-alt'></i></a></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>