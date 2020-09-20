<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<title>List Customers</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

	<h2>List Customers:</h2>
	<div id="wrapper">
		<h2>Customer Management Center</h2>
	</div>

	<div id="container">

		<input type="submit" value="Add Customer"
			onClick="window.location.href='showAddForm'; return false;"
			class="add-button" /> <br />
		<br />
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>

				<th>Email</th>
				<th>Action</th>
				<c:forEach var="tempCustomer" items="${customerList}">
					<c:url var="updateLink" value ="/customer/showFormForUpdate">
						<c:param name="customerId" value = "${tempCustomer.id}"></c:param>
					</c:url>
					<c:url var="deleteLink" value ="/customer/deleteCustomer">
						<c:param name="customerId" value = "${tempCustomer.id}"></c:param>
					</c:url>
					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td>
							<a href ="${updateLink}">Update</a>
						</td>
						<td>
							<a href ="${deleteLink}" onClick = "if(!(confirm('Are you sure to delete?')))return false;">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tr>
		</table>
	</div>
</body>

</html>









