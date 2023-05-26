<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<style>
h1 {
	font-family: sans-serif;
	color: midnightblue;
}

#button {
	height: 30px;
	width: 70px;
	background-color: black;
	color: white;
	border-radius: 5px;
}

td {
	font-family: sans-serif
}

table {
	border-collapse: separate;
	border-spacing: 0 1em;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Employee Login</h1>
		<form action="LoginCheck" method="post">
			<table style="with: 100%">
				<tr>
					<td>UserName</td>
					<td><input type="text" name="uname" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
			</table>
			<input id="button" type="submit" value="Login" /><br>
			<br>
		</form>
		<form action="signup.jsp" method="post">
			<input id="button" type="submit" value="Sign up" />
		</form>
	</div>
</body>
</html>