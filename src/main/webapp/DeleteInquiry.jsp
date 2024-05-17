<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Inquiry</title>
</head>
<body>

	<% 
	
		String inqID = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		
	%>
	
	<h1>Delete Inquiry?</h1>
	
	<form action="deleteinq" method="post">
	<table>
	
		<tr>
			<td>Inquiry ID</td>
			<td><input type="text" name="inqid" value="<%=inqID%>" readonly></td>
		</tr>
		<tr>
			<td>Customer name</td>
			<td><input type="text" name="cusname" value="<%=name%>" readonly></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="cusemail" value="<%=email%>" readonly></td>
		</tr>
		<tr>
			<td>Inquiry Message</td>
			<td><input type="text" name="cusinq" value="<%=inquiry%>" readonly></td>
		</tr>
	</table>
	<br>
	
	
	<input type="button" name="submit" value="Delete Inquiry">
	
	</form>
	

</body>
</html>