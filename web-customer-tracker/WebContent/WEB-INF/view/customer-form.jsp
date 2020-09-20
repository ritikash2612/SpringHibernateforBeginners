<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Form</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
	<h1>Customer Form</h1>

	<div id="wrapper">
		<div id="header">Add details</div>
	</div>

	<div id="container">
		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">
		<form:hidden path="id"/>

			<table>
				<tbody>
					<tr>
						<td><label>First Name</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last Name</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		
		<div style ="clear; both;"></div>
		<p>
			<a href = "${pageContext.request.contextPath}/customer/list">Back to Customer list</a>
		</p>
	</div>
</body>
</html>