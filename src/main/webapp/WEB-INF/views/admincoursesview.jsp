<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="/resources/eLearning.jpg" var="loginimage" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<title>Course Details</title>
<style>
.courselistdisplay{
	height : 200px;
	width : 800px;
	margin-left : 290px;
	}

</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark justify-content-end" style="color:black;">
  <p style="margin-right:500px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Home</a>
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
    <a class="nav-link" href="addCourse" style="color:white;">Courses</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin-view-list" style="color:white;">Admin</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="home" style="color:white;">Logout</a>
  </li>
</ul>
 </nav><br>
 <h2 style="text-align:center;margin-top:40px;font-family:Times new roman;font-weight:bold;">Available Courses</h2><br>
 
<c:forEach var="course" items="${list }">
<div class="courselistdisplay">
<img src="https://cdn.elearningindustry.com/wp-content/uploads/2019/07/top-6-eLearning-trends-of-2019.jpg" height="190px" width="300px" align=left style="margin-right : 30px">
<h3>Course Id : ${course.course_id } </h3>
<h3>Course Name : ${course.cname }</h3>
<p>Description : ${course.desp } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fees : ${course.fees }</p>
Resources : <a href="#">${course.resources }</a>
<h5>Beginner&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<c:url value='/delete-course/${course.course_id }'/>"><i class='fas fa-trash-alt'></i></a>
					| <a href="<c:url value='/update-course/${course.course_id }'/>"><i class='far fa-edit' ></i></a></h5>

</div><br>
<hr style="width:50%" align=center><br>
</c:forEach>
</body>
</html>