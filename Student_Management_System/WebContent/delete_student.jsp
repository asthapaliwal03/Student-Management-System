<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!--javascript-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<title>Delete Student</title>
</head>
<body style="position: block;
height: 600px;
background: linear-gradient(180deg, #616F9F 0%, rgba(248, 249, 255, 0) 100%);">
<%
String msg=(String)request.getAttribute("msg");
if(msg==null){
	msg="";
}%>
<div ><%@ include file="header.html" %></div>
<div>
<div ><img src="${pageContext.request.contextPath}/img/logo.png"></div>
<div class="de" >
<center>
<h1 class="head">Delete Student Detail</h1>
<form action="./DeleteStudentController" method="post">
<h3>Enrollment No:</h3> <input name="enroll" class="input" required type="text"/>
<br/><br/>
<input type="submit"value="delete" class="btn btn-outline-light btn-lg" name="delete" />
</form>
<h3 style="color:green; align=centre;"><%= msg %></h3>
</center>
</div>
</div>
</body>
</html>