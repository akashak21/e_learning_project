<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>User Details</title>
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
  <p style="margin-right:700px;color:White;font-size:25px;font-weight:bold;font-family:Georgia">E Learning Portal</p>
 
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link" href="#" style="color:white;">Home</a>
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
</ul>
 </nav><br>
 
 <h2>Available Courses</h2>
<c:forEach var="course" items="${list }">
<div class="courselistdisplay">
<img src="eLearning.jpg" height="190px" width="300px" align=left>
<h3 >Course Id : ${course.course_id } </h3>
<h3>Course Name : ${course.cname }</h3>
<p>Description : ${course.desp } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fees : ${course.fees }</p>
Resources : <a href="#">${course.resources }</a>
<h5>Beginner</h5>


<a href="<c:url value='/delete-course/${course.course_id }'/>">Delete</a>
					| <a href="<c:url value='/update-course/${course.course_id }'/>">Update</a>
</div><br><hr><br>
</c:forEach>
</body>
</html>