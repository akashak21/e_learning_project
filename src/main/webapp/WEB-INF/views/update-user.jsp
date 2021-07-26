<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Details</title>
</head>
<body>
<h2>Update User Information</h2>
	<hr>
	<c:url var="updateUrl" value="/update-user"></c:url>
	<form:form action="${updateUrl }" method="post" modelAttribute="user">
		<pre>
        User Id             <form:input path="user_id" /><br>
        Name                <form:input path="name"/><br>
        Phone Number        <form:input path="phone_no"/><br>
        Email               <form:input path="email"/><br>
        Address             <form:input path="address" /><br>
        Registration Date   <form:input path="reg_date"/><br>
        Password            <form:password path="password" /><br>
        Upload              <form:input path="upload"/><br>
                    <input type="submit" value="Update User" /> <input
				type="reset" value="Reset" />
        </pre>
	</form:form>
</body>
</html>