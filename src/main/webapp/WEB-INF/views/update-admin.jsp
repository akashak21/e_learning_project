<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.formcenter{
	margin-left : 500px;
	height : 600px;
	width : 500px;
	margin-top : 50px;
}

</style>
</head>
<body>
 <h3 style="text-align:center;margin-top:30px;font-family:Times new roman;font-weight:bold;">Update Admin</h3>
	<hr style="width:50%;" align=center>
	<div class="formcenter">
	<c:url var="updateUrl" value="/update-admin"></c:url>
	
	<form:form action="${updateUrl }" method="post" modelAttribute="admin">
		<div class="form-group">
  			<label for="usr">Admin ID :  </label>
  				<form:input id="usr" path="admin_id" style="margin-left:70px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Name :  </label>
  				<form:input id="usr" path="name" style="margin-left:93px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Email Id :  </label>
  				<form:input id="usr" path="email" style="margin-left:80px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Password :  </label>
  				<form:input type="password" id="usr" path="password" style="margin-left:68px;"/>
		</div>
        
                    <input type="submit" value="Update Admin" class="btn btn-primary" style="margin-left:90px;"/> <input
				type="reset" value="Reset" class="btn btn-primary"/>
 
	</form:form>
	</div>
 
</body>
</html>