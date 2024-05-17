<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Advent+Pro:wght@200&family=Archivo:wght@100&family=Athiti:wght@300;500&family=Bebas+Neue&family=Dosis:wght@300&family=Manjari:wght@100&family=Mulish:wght@200&family=Nunito:wght@200&family=Playfair+Display&family=Poiret+One&family=Quicksand:wght@300&family=Rambla&family=Sometype+Mono&family=Urbanist:wght@100&family=Victor+Mono:wght@200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Advent+Pro:wght@200&family=Athiti:wght@300;500&family=Dosis:wght@300&family=Manjari:wght@100&family=Mulish:wght@200&family=Playfair+Display&family=Poiret+One&family=Quicksand:wght@300&family=Rambla&family=Sometype+Mono&family=Urbanist:wght@100&family=Victor+Mono:wght@200&display=swap" rel="stylesheet">
<title>Discover Games</title>
<style type="text/css">
body{
	background-color: white;
}
.color{

  background-color: #FFDBC3;
  padding: auto;
}
.container {
  margin: 0 auto;
  width: 100%;
  max-width: 960px;
  padding: auto;
  
}

.login-button {
  background-color: #6527BE;
  color: white;
  padding: 1rem 1.5rem;
  border-radius: 30px;
  border-color: #6527BE;
  font-size: 1rem;
  font-family: 'Quicksand', sans-serif;
  font-weight: bold;
  text-decoration: none;
  margin: 0.5rem;
  position: absolute;
  top: 2;
  right: 0;
  margin-bottom: 20px;
}

.login-button:hover {
  opacity: 0.8;
  transition: 0.3s;
}
.reg-button {
  background-color: #6527BE;
  color: white;
  padding: 1rem 1.5rem;
  border-radius: 30px;
  border-color: #6527BE;
  font-size: 1rem;
  font-family: 'Quicksand', sans-serif;
  font-weight: bold;
  text-decoration: none;
  margin: 0.5rem;
  margin-right: 100px;
  position: absolute;
  top: 2;
  right: 0;
}

.reg-button:hover {
  opacity: 0.8;
  transition: 0.3s;
}

h1{
	font-size: 56px;
	text-align: centre;
}
.rectangle {
  background-color: #FAF2D3;
  border: 1px solid #FAF2D3;
  color: #E9B824;
  border-radius: 5px;
  padding: 20px;
  font-family: 'Quicksand', sans-serif;
  font-size: 20px;
  font-weight: bold;
  text-align: center;
  margin-top: 300px;
}
.rectangle i {
  color: gold;
  font-size: 30px;
  float: left;
  margin-top: 1px;
  margin-bottom: 0px;
}
.best{
	margin-left: 10px;
	text-align: left;
	margin-top: 30px;

}
.row {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 50px;
}

.column {
    flex: 1;
    padding: 10px;
    text-align: center;
}

.column img {
    max-width: 100%;
    height: 300px;
}
.rownew {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 30px;
}

.columnnew {
    flex: 1;
    padding: 10px;
    text-align: center;
    margin-top: 30px;
    
}

.columnnew img {
    max-width: 100%;
    height: 300px;
}
.All2{

  padding: auto;
	background-color: #45CFDD;
}
.All0{

  padding: 20px;
	background-color: #A7EDE7;
}
span{
  font-family: 'Archivo', sans-serif;
}

</style>
</head>
<body >
	
	<%@ include file="Header.jsp"%>
	
	<a href="customerLogin.jsp">
	<input type="button" class="login-button" value="login">
	</a>

	<a href="Register.jsp">
	<input type="button" class="reg-button" value="Sign up">
	</a>
	
 <div class="color">
 
  <div class="container"><br>
    <h1>Welcome to <span > Discover Games</span></h1>
    <p>Discover a world of gaming excitement at your fingertips. From action-packed adventures to mind-bending puzzles, we have it all.</p>
  </div>
  
  
  
  <div class="row">  
    <div class="column">
    	<a href= "GamePage.jsp">
        	<img src="Images/valorant.png" alt="Image 1" width="400px" >
       	</a>
        <p>Valorant</p>
    </div>
    <div class="column">
       <a href="GamePage.jsp">
       		 <img src="Images/amongUS.jpg" alt="Image 2" width="400px" >
        </a>
        <p>Among US</p>
    </div>
    <div class="column">
    	<a href="GamePage.jsp">
      	  <img src="Images/minecraft.jpeg" alt="Image 3" width="400px" >
      	  </a>
        <p>MineCraft</p>
    </div>
  </div>


	</div>

	<div class="All0">
  
  <div class="best">
  	<h3>Best entertainment apps <small class="text-muted">Enjoy hit games, anytime, anywhere</small></h3>
  </div>
   
   <div class="All2">
	
	<div class="rownew">  
    <div class="columnnew">
    	<a href= "GamePage.jsp">
        	<img src="Images/assasinsCreed.jpg" alt="Image 1" width="400px" >
       	</a>
        <p>Valorant</p>
    </div>
    <div class="columnnew">
       <a href="GamePage.jsp">
       		 <img src="Images/cyberPunk2.jpeg" alt="Image 2" width="400px" >
        </a>
        <p>Among US</p>
    </div>
    <div class="columnnew">
    	<a href="GamePage.jsp">
      	  <img src="Images/candyCrush.jpg" alt="Image 3" width="400px" >
      	  </a>
        <p>MineCraft</p>
    </div>
    <div class="columnnew">
    	<a href="GamePage.jsp">
      	  <img src="Images/forza.jpg" alt="Image 3" width="400px" >
      	  </a>
        <p>MineCraft</p>
    </div>
  </div>
  </div></div>
  
  
  
  <div class="rectangle">
	  <i class="fa fa-crown"></i>
	  <p>Take your gaming experience to new heights with these apps.</p>
	</div>
	
  
   
	<%@ include file="Footer.jsp"%>

</body>
</html>
