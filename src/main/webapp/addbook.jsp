<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add book</title>
</head>
<body>
	<h3>Enter book details</h3>
	<form action="/books/save" method="post">
		Book Id<input type="text" name="id" required autofocus /> <br>
		Book Name<input type="text" name="name" required autofocus /> <br>
		<input type="submit" value="Add Book">
	</form>
</body>
</html>