<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product view</title>
</head>
<body>
	<h1>All Products</h1>
	<%@page import="com.client.ViewAll, com.entity.Products, java.util.*"%>

	<table border="1">
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Category</th>
		</tr>

		<%ArrayList<Products> list = (ArrayList<Products>)request.getAttribute("list"); 
        for(Products p:list){%>
		<tr>
			<td><%=p.getName()%></td>
			<td><%=p.getDescription()%></td>
			<td><%=p.getPrice()%></td>
			<td><%=p.getcategory()%></td>
		</tr>
		<%}%>

	</table>
	<br />
	<a href="index.jsp">Back</a>
</body>
</html>