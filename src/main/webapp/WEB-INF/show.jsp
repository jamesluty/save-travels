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
<title>Expense View</title>
</head>
<body>	
	<div class="showWrapper">
		<div class="showHeader">
			<h1>Expense Details</h1>
			<a href="/">Go back</a>	
		</div>
		<div>
			<div class="showDiv">
				<p>Expense Name:</p>
				<p>${expense.name }</p>
			</div>
			<div class="showDiv">
				<p>Expense Description:</p>
				<p>${expense.description }</p>
			</div>
			<div class="showDiv">
				<p>Vendor:</p>
				<p>${expense.vendor }</p>
			</div>
			<div class="showDiv">
				<p>Amount Spent:</p>
				<p>$${expense.amount }</p>
			</div>
		</div>
	</div>
</body>
</html>