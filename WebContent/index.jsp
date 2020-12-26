<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Form</title>
</head>
<body>
	<h1>Add a new product</h1>
	<p>Please fill all the mandatory field *</p>
	<form action="ClientServlet" method="post">
		*Name: <input type="text" name="name"><br><br>
		*Description: <textarea name="description"></textarea><br><br>
		*Price: <input type="text" name="price"><br><br>
		*Category: <input type="text" name="category"><br><br>
		<button type="submit"> Submit </button>
	</form><br><br>
	
	
	<a href="ViewAll">View All Products</a>
</body>
</html>










