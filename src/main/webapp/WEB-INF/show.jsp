<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>Expense Details</h1>
			<a href="/expenses">Go Back</a>
		</div>
		<div class="Expense">
			<p>Expense Name: <c:out value="${expense.expenseName }"/></p>
			<p>Description: <c:out value="${expense.description }"/></p>
			<p>Vendor: <c:out value="${expense.vendor }"/></p>
			<p>Amount: <c:out value="${expense.amount }"/></p>
		</div>
		
	</div>
</body>
</html>