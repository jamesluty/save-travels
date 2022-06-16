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
		<h1>Safe Travels</h1>
		<table class="table table-bordered table-striped">
			<thead class="table-dark">
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
					<td><a href="/show/${expense.id}">${expense.name }</a></td>
					<td>${expense.vendor }</td>
					<td>$${expense.amount }</td>
					<td>
						<div class="actionBtns">
							<a class="btn btn-primary" href="/edit/${expense.id}">Edit</a>
							<form action="/delete/${expense.id}" method="post">
							    <input type="hidden" name="_method" value="delete">
							    <input class="btn btn-danger" type="submit" value="Delete">
							</form>				
						</div>
					</td>
				</tr>			
			</c:forEach>
			</tbody>
		</table>
		<div class="formDiv">
			<h3>Add an Expense: </h3>
			<form:form class="createForm" action="/create" method="post" modelAttribute="expense">
				<div class="formItem">
					<form:label class="formLabel" path="name">Expense Name: </form:label>
					<form:input class="formInput" path="name"/>
					<form:errors path="name"/>
				</div>
				<div class="formItem">
					<form:label class="formLabel" path="vendor">Vendor: </form:label>
					<form:input class="formInput" path="vendor"/>
					<form:errors path="vendor"/>
				</div>
				<div class="formItem">
					<form:label class="formLabel" path="amount">Amount: </form:label>
					<form:input class="formInput" type="number" path="amount"/>
					<form:errors path="amount"/>
				</div>
				<div class="formItem">
					<form:label class="formLabel" path="description">Description: </form:label>
					<form:input class="formInput" path="description"/>
					<form:errors path="description"/>
				</div>
				<button class="btn btn-primary">Create</button>
			</form:form>
		</div>
	</div>
</body>
</html>