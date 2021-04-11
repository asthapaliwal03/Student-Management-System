<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!--javascript-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body style="background:url('${pageContext.request.contextPath}/img/background.jpg');">
<div><%@ include file="header.html" %></div>
<%
String msg=(String)request.getAttribute("msg");
if(msg==null){
	msg="";
}
%>

<div class="container">
	
	<form action="./AddStudentController" method="post" name="student_detail" onSubmit="return doValidate()" class="form">
		<center><h1 class="head">Add Student</h1></center>
		<div class="form-floating">
  			<input class="form-control" id="floatingInput" placeholder="Enrollment" type="text" name="serollno" required>
  			<label for="floatingInput">Student Enrollment Number:</label>
       	</div>
       	<div class="row g-3">
  			<div class="col-md">
    			<div class="form-floating">
      				<input class="form-control" id="floatingInputGrid" required placeholder="Student First Name" type="text" name="fname">
      				<label for="floatingInputGrid">First Name:</label>
    			</div>
 	 		</div>
  			<div class="col-md">
    			<div class="form-floating">
      				<input class="form-control" id="floatingInputGrid"required placeholder="Student Last Name" type="text" name="lname"/>
      				<label for="floatingInputGrid">Last Name:</label>
    			</div>
  			</div>
		</div>
		<div class="form-floating mb-3">
  			<input class="form-control" id="floatingInput" required placeholder="Student Email" type="email" name="email">
  			<label for="floatingInput">Student Email:</label>
       	</div>
       	<div class="row">
       	<label class="col">Gender:</label>
       		<div class="form-check col">
       		<input type="radio" class="form-check-input" name="gender" value="male"/>
       		<label>Male</label>
       		</div>
       		<div class="form-check col">
       		<input class="form-check-input" type="radio" name="gender" value="female"/>
       		<label>Female</label>
       		</div>
       		</div>
		<div class="form-floating">
			<select name="course" class="form-select" >
				<option disabled="disabled" selected="selected">--select---</option>
				<option value="cjava">Core Java</option>
				<option value="adv. java">Advance Java</option>
				<option value="cpython">Core Python</option>
				<option value="c++">C/C++</option>
				<option value="adv. python">Advance Python</option>
			</select>
		 	<label for="floatingSelect">Course</label>
		 </div>
		 <br/>
		 <center>
		 	<input type="submit" value="add Student" class="btn btn-lg btn-outline-primary"/>
			<input type="reset" value="Cancel" class="btn btn-lg btn-outline-primary"/>
		</center>
		 
		
		<h3 style="color:green; align=centre;"><%= msg %></h3>
	</form>

</div>
<script src="./script.js"></script>
</body>
</html>