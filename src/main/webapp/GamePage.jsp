<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Advent+Pro:wght@200&family=Athiti:wght@300;500&family=Bebas+Neue&family=Dosis:wght@300&family=Manjari:wght@100&family=Mulish:wght@200&family=Playfair+Display&family=Poiret+One&family=Quicksand:wght@300&family=Rambla&family=Sometype+Mono&family=Urbanist:wght@100&family=Victor+Mono:wght@200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Advent+Pro:wght@200&family=Athiti:wght@300;500&family=Bebas+Neue&family=Dosis:wght@300&family=Manjari:wght@100&family=Mulish:wght@200&family=Nunito:wght@200&family=Playfair+Display&family=Poiret+One&family=Quicksand:wght@300&family=Rambla&family=Sometype+Mono&family=Urbanist:wght@100&family=Victor+Mono:wght@200&display=swap" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>MineCraft</title>
</head>
<style>
.container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin: 0 auto;
  max-width: 960px;
  border-radius: 5px;
  padding: 10px;
  
}

.left-side {
  flex: 1;
  padding: 10px;
  
}

.right-side {
  flex: 1;
  padding: 10px;
  text-align: center;
}

.right-side img {
  max-width: 100%;
}
h1{
	font-family: 'Bebas Neue', sans-serif;
}
.paragraph{
	font-family: 'Nunito', sans-serif;
}
.beauty{
  
  margin-top: 50px;
  background-color: #A7EDE7;
  padding: 30px;
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
	background-color: #fff;
	margin-top: 60px;
}
.best{
	margin-left: 10px;
	text-align: left;
	margin-top: 30px;

}
</style>
<body>

	<%@ include file="Header.jsp"%>
	
	
		<div class="container">
  			<div class="left-side">
  				  <h1>MineCraft</h1>
   			      <p >Minecraft is a sandbox game developed by Mojang Studios and originally released in 2009. The game was created by Markus "Notch" Persson in the Java programming language.</p>
   			      
   			      <br><p class="paragraph">Create, explore, survive, repeat. Minecraft: Java Edition and Bedrock Edition are now a package deal for Windows. Minecraft: Java & Bedrock Edition gives you access to both games in one purchase and one unified launcher, making it easier than ever to go from one edition to the other.</p> 
   			      
   			      <br><h3><small class="text-muted">Developed by</small></h3>
   			      <p>Mojang Studios</p>
   			      
   			      <div>
   			      <a href="Payment.jsp">
				<input type="button" class="btn btn-primary btn-lg" value="Buy for $23.12">
				</a>
				<input type="button" class="btn btn-secondary btn-lg" value="Get Game pass">
				 </div>
   			      
  			</div>
 			<div class="right-side">
    			<img src="Images/minecraft.jpeg" alt="Image">
  			</div>
  			
  		
		</div>
		
		
		<div class = "beauty">
			
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<p>If you had any issues pruchasing the payment, send an inquiry</p>
			<a href="Inquiry.jsp">
			<input type="button" class="btn btn-info" value="send an inquiry">
			</a>
			</div>
		</div><br>
		
		<div class="alert alert-primary align-center" role="alert">
		For you uprising issues, contact our customer support
		</div>
		
					<div class="All0">
			  
			  <div class="best">
			  	<h3>Best entertainment apps <small class="text-muted">Enjoy hit games, anytime, anywhere</small></h3>
			  </div>
			   
			   <div class="All2">
				
				<div class="rownew">  
			    <div class="columnnew">
			    	<a href= "GamePage.jsp">
			        	<img src="Images/valorant.png" alt="Image 1" width="400px" >
			       	</a>
			        <p>Valorant</p>
			    </div>
			    <div class="columnnew">
			       <a href="GamePage.jsp">
			       		 <img src="Images/amongUS.jpg" alt="Image 2" width="400px" >
			        </a>
			        <p>Among US</p>
			    </div>
			    <div class="columnnew">
			    	<a href="GamePage.jsp">
			      	  <img src="Images/minecraft.jpeg" alt="Image 3" width="400px" >
			      	  </a>
			        <p>MineCraft</p>
			    </div>
			    <div class="columnnew">
			    	<a href="GamePage.jsp">
			      	  <img src="Images/minecraft.jpeg" alt="Image 3" width="400px" >
			      	  </a>
			        <p>MineCraft</p>
			    </div>
			  </div>
			  </div></div>
	
		

	<%@ include file="Footer.jsp"%>

</body>
</html>