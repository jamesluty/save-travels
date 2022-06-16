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
<title>Edit Expense</title>
</head>
<body>
	<div class="editWrapper">
		<div class="editHeader">
			<h1>Edit Expenses</h1>
			<a href="/">Go back</a>		
		</div>
		<div class="editFormDiv">
			<form:form class="editForm" action="/edit" method="post" modelAttribute="expense">
				<input type="hidden" name="_method" value="put">
				<input type="hidden" name="id" value="${expense.id }"/>
				<div class="formItem">
					<form:label class="formLabel" path="name">Expense Name: </form:label>
					<form:input class="formInput" path="name" value="${expense.name }"/>
					<form:errors path="name"/>
				</div>
				<div class="formItem">
					<form:label class="formLabel" path="vendor">Vendor: </form:label>
					<form:input class="formInput" path="vendor" value="${expense.vendor }"/>
					<form:errors path="vendor"/>
				</div>
				<div class="formItem">
					<form:label class="formLabel" path="amount">Amount: </form:label>
					<form:input class="formInput" path="amount" value="${expense.amount }"/>
					<form:errors path="amount"/>
				</div>
				<div class="formItem">
					<form:label class="formLabel" path="description">Description: </form:label>
					<form:input class="formInput" path="description" value="${expense.description }"/>
					<form:errors path="description"/>
				</div>
				<button class="btn btn-primary">Edit</button>
			</form:form>
		</div>
	</div>
</body>
</html>