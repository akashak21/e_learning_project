<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Form</title>
</head>
<body>
	<h2>User Feedback</h2>
	<hr>
	<form:form action="registerfeedback" method="POST" modelAttribute="feedback">
		<pre>
        User Id             <form:input path="user_id"/><br>
        Name                <form:input path="name"/><br>
        Email               <form:input path="email"/><br>
        Feedback            <form:input path="feedback"/><br>
       
                    <input type="submit" value="Submit" /> <input
				type="reset" value="Reset" />
        </pre>
	</form:form>
</body>
</html>