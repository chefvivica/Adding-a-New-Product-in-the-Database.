<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Message</title>
</head>
<body>
<%@page import="com.client.ClientServlet, com.entity.Products"%>
	<h1>something went wrong..</h1>
	<p>${errMsg}</p>
	<p>${e.getMessage()}</p>
	<jsp:include page="index.jsp"></jsp:include>
</body>
</html>