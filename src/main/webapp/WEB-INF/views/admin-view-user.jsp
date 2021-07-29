<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/resources/eLearning.jpg" var="loginimage" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<title>User Details</title>
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
    <a class="nav-link" href="#" style="color:white;">User</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-contact-list" style="color:white;">Contact</a>
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
</tr>
</c:forEach>
</table>
</body>
</html>