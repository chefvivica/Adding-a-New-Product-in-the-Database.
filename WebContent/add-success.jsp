<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add success page</title>
</head>
<body>
	<h1>New product added successfully.</h1>
	<%@page import="com.client.ClientServlet, com.entity.Products"%>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Category</th>
		</tr>
		
		<tr>
			<td>${product.name}</td>
			<td>${product.description}</td>
			<td>${product.price}</td>
			<td>${product.category}</td>		
		</tr>
		<br><br>
	<a href="index.jsp"> Back </a>
</body>
</html>