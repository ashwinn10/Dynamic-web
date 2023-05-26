<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee details</title>
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
	border: 3px solid #000;
	border-collapse: collapse;
	width: 50%;
}

tr:hover {
	background-color: lightsteelblue;
	font-weight: 600;
}

th, td {
	text-align: center;
	border: 2px solid #000;
	border-collapse: collapse;
	padding: 10px;
}

th {
	background-color: midnightblue;
	color: white;
}
</style>
</head>
<body>
	<%
	response.setIntHeader("Refresh", 3);
	%>
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/employee" user="root"
		password="KL7bg3342$" />

	<sql:query var="listUsers" dataSource="${myDS}">
        SELECT * FROM empdetails;
    </sql:query>

	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h1>Employee details</h1>
			</caption>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Contact</th>
			</tr>
			<c:forEach var="user" items="${listUsers.rows}">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.first_name}" /></td>
					<td><c:out value="${user.last_name}" /></td>
					<td><c:out value="${user.address}" /></td>
					<td><c:out value="${user.contact}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>