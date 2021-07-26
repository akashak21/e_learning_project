<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact Details</title>
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

<h3 style="text-align:center;margin-top:30px;font-family:Times new roman;font-weight:bold;">User Contact Update</h3>
	
	<hr>
	<div class="formcenter">
	<c:url var="updateUrl" value="/update-contact"></c:url>
	<form:form action="${updateUrl }" method="post" modelAttribute="contact">
	
	<div class="form-group">
  			<label for="usr">User ID :  </label>
  				<form:input id="usr" path="user_id" style="margin-left:100px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Name :  </label>
  				<form:input id="usr" path="name" style="margin-left:110px;"/>
		</div>
		<div class="form-group">
  			<label for="usr" >Email :        </label>
  				<form:input id="usr" path="email" style="margin-left:115px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Phone Number:  </label>
  				<form:input id="usr" path="phone_no" style="margin-left:50px;"/>
		</div>
		
		<div class="form-group">
  			<label for="usr">Message : </label>
  				<form:input id="usr" path="message" style="margin-left:92px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Contact Id : </label>
  				<form:input id="usr" path="contact_id" style="margin-left:80px;"/>
		</div>
	
                    <input type="submit" value="Update Contact" class="btn btn-primary" style="margin-left:100px;"/> <input
				type="reset" value="Reset" class="btn btn-primary"/>

	</form:form>
       </div>
</body>
</html>