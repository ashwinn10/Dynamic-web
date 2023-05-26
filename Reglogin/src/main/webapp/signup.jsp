<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<style>
body {
	font-family: sans-serif;
}

h1 {
	color: midnightblue;
}

#button {
	height: 30px;
	width: 70px;
	background-color: black;
	color: white;
	border-radius: 5px;
}

table {
	border-collapse: separate;
	border-spacing: 0 1em;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Employee Register Form</h1>
		<form action="Reg" method="post">
			<table style="with: 90%">
				<tr>
					<td>Id</td>
					<td><input type="text" name="Id" /></td>
				</tr>
				<td>First Name</td>
				<td><input type="text" name="firstName" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName" /></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" name="contact" /></td>
				</tr>
			</table>
			<input id="button" type="submit" value="Submit" />
		</form>
	</div>
</body>
</html>
