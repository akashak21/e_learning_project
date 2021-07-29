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
    <a class="nav-link" href="admin-feedback-list" style="color:white;">Feedback</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="course-list-admin" style="color:white;">Courses</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Admin</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="home" style="color:white;">Logout</a>
  </li>
</ul>
 </nav><br>
 <h3 style="text-align:center;margin-top:40px;font-family:Times new roman;font-weight:bold;">Admin Details</h3><br>
 
<table align="center">
<tr>
<th>Admin ID</th>
<th>Name</th>
<th>Email</th>
<th>Actions</th>
</tr>
<c:forEach var="admin" items="${list }">
<tr>
<td>${admin.admin_id }</td>
<td>${admin.name }</td>
<td>${admin.email }</td>
<td><a href="<c:url value='/delete-admin/${admin.admin_id }'/>"><i class='fas fa-trash-alt'></i></a>
					| <a href="<c:url value='/update-admin/${admin.admin_id }'/>"><i class='far fa-edit' ></i></a></td>
</tr>
</c:forEach>
</table>
<br>
<a href="addAdmin"><input type="submit" value="Add Admin" class="btn btn-primary" style="margin-left:620px;">
</a>
</body>
</html>