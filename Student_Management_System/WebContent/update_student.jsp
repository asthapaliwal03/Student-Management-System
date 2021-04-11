<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.pst.sms.DTO.StudentDTO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!--javascript-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Detail </title>
</head>
<body style="background:url('${pageContext.request.contextPath}/img/background.jpg');" >
<div><%@ include file="header.html" %></div>
<%
StudentDTO dto=(StudentDTO)request.getAttribute("dto");
if(dto==null){
	dto=new StudentDTO();
	dto.setEnroll(0);
	dto.setCourse("");
	dto.setEmail("");
	dto.setFname("");
	dto.setLname("");
	dto.setGender("");
}
%>
<div >
<div class="row">
<DIV class="col-6 align-self-center" id="col">
<center>
<h3 class="h3">Enter Enrollment Number:</h3>
<form action="./SearchStudentController" method="post">
<input name="enroll"  class="input"placeholder="Enrollment Number" required type="text"/>
<br/>
<br/>
<input type="submit"value="search" name="search" class="btn btn-primary"/>
</form>
</center>
</DIV>
<div class="col-6">
<%
String roll;
if(dto.getEnroll()==0){
 roll="";
}else{
	roll=String.valueOf(dto.getEnroll());
} %>
<% 
String msg=(String)request.getAttribute("msg");
if(msg==null){
	msg="";}
%>
<div class="form" >
	<h1 class="head">Update Student Detail</h1>
	<form action="./UpdateStudentController" method="post" name="student_detail" >
	<div class="mb-2 row">
    <label for="staticEmail" class="col-sm-4 col-form-label">Enrollment Number:</label>
    <div class="col-sm-8">
      <input type="text"  readonly class="form-control-plaintext" placeholder="Student Enrollment Number" name="rollno" value="<%= roll %>" />
    </div>
  </div>
  <div class="mb-2 row">
    <label  class="col-sm-4 col-form-label">First Name:</label>
    <div class="col-sm-8">
      <input class="form-control" placeholder="Student First Name" type="text" name="fname" value="<%= dto.getFname()%>"/>
    </div>
  </div>
  <div class="mb-2 row">
    <label  class="col-sm-4 col-form-label">Last Name:</label>
    <div class="col-sm-8">
      <input class="form-control" placeholder="Student Last Name" type="text" name="lname"value="<%=dto.getLname()%>"/>
    </div>
  </div>
<div class="mb-2 row">
    <label  class="col-sm-4 col-form-label">Email:</label>
    <div class="col-sm-8">
      <input class="form-control" placeholder="Email" type="email" name="email" value="<%= dto.getEmail()%>"/>
    </div>
  </div>
  <div class="mb-2 row">
    <label  class="col-sm-2 col-form-label">Gender</label>
    <div class="col-sm-4">
<input class="form-control" type="text" placeholder="Gender" name="gender" value="<%= dto.getGender()%>"/>
    </div>
    <label  class="col-sm-2 col-form-label">Course:</label>
    <div class="col-sm-4">
<input class="form-control" type="text" type="text" placeholder="Course" name="course" value="<%= dto.getCourse()%>"/>
    </div>
  </div>
  <div class="mb-3 row">
  	<div class="col">
		<input type="submit" value="Update Student" class="btn btn-primary btn-lg"/>
		</div>
		<div class="col">
		<input type="reset" value="Cancel" class="btn btn-default btn-lg"/>
		</div>
		<br/>
		<h3 style="color:green; align=centre;"><%= msg %></h3>
		</div>
	</form>
</div>
</div>
</div>
</div>
</body>
</html>