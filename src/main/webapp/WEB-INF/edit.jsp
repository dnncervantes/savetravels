<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage = "true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
</head>
<body>
		<div class="edit-expense">
			<h2>Edit Expense</h2>
		<a href="/expenses">Go Back</a>
			<form:form action="/expenses/${expense.id}/edit" method="post" modelAttribute="expense">
				<input type="hidden" name="_method" value="put">
				<div class="name">
					<form:label path="expenseName">ExpenseName</form:label>
					<form:input path="expenseName" type="text" />
					<form:errors path="expenseName"/>
				</div>
				<div class="vendor">
					<form:label path="vendor">Vendor</form:label>
					<form:input path="vendor" type="text" />
					<form:errors path="vendor"/>
				</div>
				<div class="amount">
					<form:label path="amount">Amount</form:label>
					<form:input path="amount" type="number" />
					<form:errors path="amount"/>
				</div>
				<div class="description">
					<form:label path="description">description</form:label>
					<form:textarea path="description"/>
					<form:errors path="description"/>
				</div>
				<input type="submit" value="Submit" />
			</form:form>
		</div>
</body>
</html>