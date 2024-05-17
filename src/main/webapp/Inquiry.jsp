<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send an Inquiry to us</title>
</head>
<body>

	<form action="inq" method="post">
	<div >
	
		Full Name : <input type="text" name="cusName"><br>
		Email : <input type="text" name="cusEmail"><br>
		Type your inquiry here : <input type="text" name="cusInquiry"><br>
		
		<input type="submit" name="submit" value="Submit Inquiry">
	
	</div>
	</form>

</body>
</html>