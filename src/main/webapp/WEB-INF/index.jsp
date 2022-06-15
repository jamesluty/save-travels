<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Safe Travels</title>
</head>
<body>
	<div class="bodyWrapper">
		<h1>Sage Travels</h1>
		<table class="table table-bordered table-striped">
			<thead class="table-dark">
				<tr>
					<th>Expense</th>
					<th>Vendor</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="expense" items="${expenses }">
				<tr>
					<td>${expense.name }</td>
					<td>${expense.vendor }</td>
					<td>${expense.amount }</td>
				</tr>			
			</c:forEach>
			</tbody>
		</table>
		<div>
			<form:form action="/create" method="post" modelAttribute="expense">
				<p>
					<form:label path="name">Expense Name: </form:label>
					<form:input path="name"/>
					<form:errors path="name"/>
				</p>
				<p>
					<form:label path="vendor">Vendor: </form:label>
					<form:input path="vendor"/>
					<form:errors path="vendor"/>
				</p>
				<p>
					<form:label path="amount">Amount: </form:label>
					<form:input path="amount"/>
					<form:errors path="amount"/>
				</p>
				<p>
					<form:label path="description">Description: </form:label>
					<form:input path="description"/>
					<form:errors path="description"/>
				</p>
				<button>Create</button>
			</form:form>
		</div>
	</div>
</body>
</html>