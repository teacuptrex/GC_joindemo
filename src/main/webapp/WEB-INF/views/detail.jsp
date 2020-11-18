<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Detail</title>
</head>
<body>

	<h1>Employee Detail</h1>
	
	<h2>${ employee.firstname } ${ employee.lastname }</h2>
	Phone: ${ employee.phone }<br />
	Department; ${ employee.department.name }

</body>
</html>