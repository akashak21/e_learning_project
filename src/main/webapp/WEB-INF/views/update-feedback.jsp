<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Feedback Details</title>

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
<h3 style="text-align:center;margin-top:30px;font-family:Times new roman;font-weight:bold;">Update Feedback Information</h3>
	<hr>
	<div class="formcenter">
	<c:url var="updateUrl" value="/update-feedback"></c:url>
	<form:form action="${updateUrl }" method="post" modelAttribute="feedback">
	<div class="form-group">
  			<label for="usr">Feedback ID :  </label>
  				<form:input id="usr" path="f_id" style="margin-left:55px;"/>
		</div>
				<div class="form-group">
  			<label for="usr">User ID :  </label>
  				<form:input id="usr" path="user_id" style="margin-left:90px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Name :  </label>
  				<form:input id="usr" path="name" style="margin-left:100px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Email :  </label>
  				<form:input id="usr" path="email" style="margin-left:105px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Feedback :  </label>
  				<form:input id="usr" path="feedback" style="margin-left:75px;"/>
		</div>
       
                    <input type="submit" value="Update" class="btn btn-primary" style="margin-left:120px;"/> <input
				type="reset" value="Reset" class="btn btn-primary"/>
        
	</form:form>
	</div>
</body>
</html>