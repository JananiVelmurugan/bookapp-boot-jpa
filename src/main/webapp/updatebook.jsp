<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>
<body>
	<h3>Book Info</h3>
	<form action="save" method="post">
		<table border="1">

			<tbody>
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" value="${BOOK.id}"
						readonly="readonly"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value="${BOOK.name}"></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="update">
	</form>
</body>
</html>