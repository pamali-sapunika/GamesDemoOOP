<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register account</title>
</head>
<body>

	<form action="reg" method="post">
	
		Customer name
		<input type="text" name="name" ><br>
		
		Email
		<input type="text" name="email"><br>
		
		Mobile number
		<input type="text" name="phone"><br>
		
		<br>Enter username and password<br>
		User Name
		<input type="text" name="uid"><br>
		
		Password
		<input type="password" name="pwd"><br>
	

		<input type="submit" name="submit" value="create account">
		
	</form>

</body>
</html>