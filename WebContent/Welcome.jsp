<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

<style type="text/css">
	  body {
 		  background-image: url("body.jpg");
   }
</style>
</head>
<body>
<section>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Shubham Pawar</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Logout.jsp">Logout</a></li>
 </ul>
 <section>
 	 	<%
        	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
        
        	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
        	
        	response.setHeader("Expires", "0"); //Proxies
        
        %>
      <%
      	if(session.getAttribute("name") == null){
      		response.sendRedirect("Home.jsp");
      	}
      %>
      <br><br><br><br><br><br>
<%
 String name;
		name = (String)session.getAttribute("name");
%>
<h1>Welcome <%=name %> to my website</h1>
<br>
<h5>Thank you for Registration ! ! !</h5>

</body>
</html>