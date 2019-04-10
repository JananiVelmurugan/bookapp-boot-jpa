<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>list books</title>
</head>
<body>

	<h3>Books Details</h3>
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${BOOKSLIST}">
				<tr>
					<td>${book.id}</td>
					<td>${book.name}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>