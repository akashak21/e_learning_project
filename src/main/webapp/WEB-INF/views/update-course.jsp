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
<h3 style="text-align:center;margin-top:30px;font-family:Times new roman;font-weight:bold;">Update Courses</h3>
	<hr style="width:50%;" align=center>
	<div class="formcenter">
	<c:url var="updateUrl" value="/update-course"></c:url>
	
	<form:form action="${updateUrl }" method="post" modelAttribute="course">
		<div class="form-group">
  			<label for="usr">Course ID :  </label>
  				<form:input id="usr" path="course_id" style="margin-left:70px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Course Name :  </label>
  				<form:input id="usr" path="cname" style="margin-left:45px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Description :  </label>
  				<form:input id="usr" path="desp" style="margin-left:60px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Fees :  </label>
  				<form:input id="usr" path="fees" style="margin-left:105px;"/>
		</div>
		<div class="form-group">
  			<label for="usr">Resources :  </label>
  				<form:input id="usr" path="resources" style="margin-left:65px;"/>
		</div>
        
                    <input type="submit" value="Update Course" class="btn btn-primary" style="margin-left:90px;"/> <input
				type="reset" value="Reset" class="btn btn-primary"/>
				
	</form:form>
	</div>
</body>
</html>