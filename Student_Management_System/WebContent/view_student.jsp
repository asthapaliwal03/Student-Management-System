<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.pst.sms.DTO.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!--javascript-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Student</title>

</head>
<body >
<% 
List<StudentDTO> list=(ArrayList<StudentDTO>)request.getAttribute("list"); 
%>
<div ><%@ include file="header.html" %></div>
<div>
<center>
<h1 class="head" >View All Student</h1>
<table border="5px" class="table table-striped">
<thead>
	<tr>
	<th scope="col">Enrollment number</th>
	<th scope="col">First Name</th>
	<th scope="col">Last Name</th>
	<th scope="col">Email</th>
	<th scope="col">Gender</th>
	<th scope="col">Course</th>
	</tr>
</thead>
<% for(StudentDTO i:list){ %>
	<tr><td><%=i.getEnroll() %></td>
	<td><%=i.getFname() %></td>
	<td><%=i.getLname() %></td>
	<td><%=i.getEmail() %></td>
	<td><%=i.getGender() %></td>
	<td><%=i.getCourse() %></td></tr>
<%}%>
</table>
</center>
</div>
<div ><%@ include file="footer.html" %></div>
</body>
</html>