<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
</head>
<body>
	<h2>Course Registration</h2>
	<hr>
	<form:form action="registercourse" method="POST" modelAttribute="course">
		<pre>
        Course Id           <form:input path="course_id" placeholder="sdf"/><br>
        Course Name         <form:input path="cname"/><br>
        Description         <form:input path="desp"/><br>
        Fees                <form:input path="fees"/><br>
        Resources           <form:input path="resources" /><br>
        
                    <input type="submit" value="Register" /> <input
				type="reset" value="Reset" />
        </pre>
	</form:form>
</body>
</html>