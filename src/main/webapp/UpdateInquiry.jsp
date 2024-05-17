<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String inqID = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
	%>
	

	<form action="updateInq" method="post">
	
		Inquiry ID
		<input type="text" name="inqid" value="<%= inqID %>" readonly><br>
	
		Customer name 
		<input type="text" name="cusname" value="<%= name %>"><br>
	
		Email
		<input type="text" name="cusemail" value="<%= email %>"><br>
		
		Inquiry message
		<input type="text" name="cusinq" value="<%= inquiry %>"><br>
		
		
		<input type="submit" value="update Inquiry" name="submit">
		
	</form>

</body>
</html>