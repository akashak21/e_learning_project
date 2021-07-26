<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Course Details</title>
</head>
<body>
<h2>Update Course Information</h2>
	<hr>
	<c:url var="updateUrl" value="/update-course"></c:url>
	<form:form action="${updateUrl }" method="post" modelAttribute="course">
		<pre>
		Course Id           <form:input path="course_id"/><br>
        Course Name         <form:input path="cname"/><br>
        Description         <form:input path="desp"/><br>
        Fees                <form:input path="fees" /><br>
        Resources           <form:input path="resources"/><br>  
                    <input type="submit" value="Update Feedback" /> <input
				type="reset" value="Reset" />
        </pre>
	</form:form>
</body>
</html>