<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Departments</title>
</head>
<body>

	<h1>Departments</h1>
	
	<c:forEach var="department" items="${departments}">
	
		<h2>${ department.name }</h2>
		
		<ul><c:forEach var="employee" items="${ department.employees }">
			<li><a href="/detail?id=${ employee.id }">${ employee.firstname } ${ employee.lastname }</a></li>
		</c:forEach></ul>
		
	</c:forEach>

	<h1> Search by Last Name</h1>
	<form method="post" action="/detail/search">
	Last Name contains: <input type="text" name="lastname" /><br />
	<input type="submit" />
	</form>
</body>
</html>