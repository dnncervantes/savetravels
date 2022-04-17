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
<title>Expenses</title>
</head>
<body>
	<div class="container">
		<h1 class="save-title">Save Travels</h1>
		<table>
			<thead>
				<tr>
					<th>Expense</th>
					<th>Vendor</th>
					<th>Amount</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses }">
					<tr>
						<td><a href="/expenses/${expense.id}">${expense.expenseName }</a></td>
						<td><c:out value="${expense.vendor }"></c:out></td>
						<td><c:out value="${expense.amount }"></c:out></td>
						<td><a href="/expenses/${expense.id }/edit">Edit</a>
							<form action="/expenses/${expense.id }" method="post">
								<input type="hidden" name="_method" value="delete">
								<input type="submit" value="Delete">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="add-expense">
			<h2>Add an expense:</h2>
			<form:form action="/expenses" method="post" modelAttribute="expense">
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
	</div>
</body>
</html>