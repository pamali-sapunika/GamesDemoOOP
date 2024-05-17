<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Success!</title>
<style>
.success{
	text-align: center;
 	margin-top: 30px;
}
.explore{
	margin-top: 40px;
}
</style>
</head>
<body>

		<%@ include file="Header.jsp"%>
		
		<div class="success">
			<h2>Payment Successful!</h2><br>
			<p>Thank you for choosing us. Your payment has been successfully processed, and we're thrilled to have you as our valued customer. Your support makes it all possible.</p>
		
		
			<div class="explore">
			<div class="d-grid gap-2 col-6 mx-auto ">
				<a href="MainPage.jsp">
				<input type="button" class="btn btn-secondary btn-lg" value="Explore more">
				</a>
			</div></div>
			
		
		</div>
		
		<%@ include file="Footer.jsp"%>

</body>
</html>