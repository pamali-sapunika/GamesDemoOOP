<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<foreach var="inqq" items="${inqDetails}">
	
		${inqq.id}
		${inqq.name}
		${inqq.email}
		${inqq.inquiry}
	
	</foreach>

</body>
</html>