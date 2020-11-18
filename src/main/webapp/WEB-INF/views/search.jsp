<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
</head>
<body>

	<h1>Search Results</h1>
	<c:forEach var="employee" items="${ emps }">
	
	<a href="/detail?id=${ employee.id }">${ employee.firstname } ${ employee.lastname }</a><br />
	
	</c:forEach>

</body>
</html>