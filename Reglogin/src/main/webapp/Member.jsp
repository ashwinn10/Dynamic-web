<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<style>
body {
	font-family: sans-serif;
}

h1 {
	color: midnightblue;
}

#button {
	height: 30px;
	width: 60px;
	background-color: black;
	color: white;
	border-radius: 5px;
}

table {
	border: 3px solid #ddd;
	border-collapse: collapse;
	width: 50%;
}

th, td {
	text-align: left;
	border: 2px solid #ddd;
	border-collapse: collapse;
	padding: 10px;
}

input {
	padding: 5px;
}
</style>
</head>
<body>
	<div align="center">
		<h3>Logged in Successfully</h3>
	</div>
	<div align="center">

		<table>

			<tr>
				<td>First Name</td>
				<td>${fn }</td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td>${ln}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${ad }</td>
			</tr>
			<tr>
				<td>Contact</td>
				<td>${cont }</td>
			</tr>
			</tr>

		</table>
		<br>
		<form method="post" action="login.jsp">
			<input id="button" type="Submit" value="Log out">
		</form>
		<br>
		<form method="post" action="Table.jsp">
			<input id="button" type="Submit" value="View DB">
		</form>

	</div>
</body>
</html>