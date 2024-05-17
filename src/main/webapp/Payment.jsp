<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Advent+Pro:wght@200&family=Archivo:wght@100&family=Athiti:wght@300;500&family=Bebas+Neue&family=Dosis:wght@300&family=Manjari:wght@100&family=Mulish:wght@200&family=Nunito+Sans:ital,opsz,wght@0,6..12,200;0,6..12,300;1,6..12,200&family=Nunito:wght@200&family=Playfair+Display&family=Poiret+One&family=Quicksand:wght@300&family=Rambla&family=Sometype+Mono&family=Urbanist:wght@100&family=Victor+Mono:wght@200&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Payment proceed</title>
</head>
<style>
body{
	background-image: url('Images/minecraftEn.png');
	background-size: cover;
    background-repeat: no-repeat;
}
.container {
  margin: 0 auto;
  width: 50%;
  margin-top: 40px;
  border: 1px solid black;
  border-radius: 5px;
  padding: 30px;
  background-color: #8BE8E5;
  opacity: 1;
}
.middle{
  margin-top: 20px;
}
.happy{
  font-family: 'Nunito', sans-serif;
  margin-left: 30px;
  marign-top:50px;
  text-align: center;
}

h1{
	margin-top: 30px;
}

</style>
<body>

		<%@ include file="Header.jsp"%>
		
		<div class="happy">
			<h1>MineCraft Deluxe Edition for PC</h1>
			<h2><small class="text-muted"> Developed by Mojang Studios</small></h2>
		</div>
		
		<div class="container">
		<form action="pay" method="post">
		
			Payment id
			<input type="text" name="payid" class="input-group mb-3 form-control" readonly><br>
		
			Account holder name
			<input type="text" name="name" class="input-group mb-3 form-control" ><br>
		
			Bank
			<input type="text" name="bank" class="input-group mb-3 form-control" ><br>
		
			Branch
			<input type="text" name="branch" class="input-group mb-3 form-control" ><br>
			
			<div>Provide your account details</div>
			
			Acccount number
			<input type="text" name="account" class="input-group mb-3 form-control"><br>
			
			Security code
			<input type="text" name="sec"  class="input-group mb-3 form-control"><br>
		
			<div class="middle">
			<input type="submit" class="btn btn-primary" value="Pay" name="submit">		
			</div>
		
		</form>
		</div>
		
		<%@ include file="Footer.jsp"%>

</body>
</html>