<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
</head>
<body>
	
	<c:forEach var="cuss" items="${cusDetails}">
	
		<b>${cuss.id}<br></b>
		${cuss.name}<br>
		${cuss.phone}<br>
		${cuss.email}<br>
		${cuss.userName}

	</c:forEach>
</body>
</html>