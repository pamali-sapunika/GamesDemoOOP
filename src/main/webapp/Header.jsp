<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Advent+Pro:wght@200&family=Manjari:wght@100&family=Poiret+One&family=Urbanist:wght@100&display=swap" rel="stylesheet">

<style type="text/css">
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 2rem 2rem;
  background-color: #5C4B99;
  width: 100%;
  overflow-x: hidden;
}

.header-left {
  flex: 2;
}

.header-right {
  flex: 2;
}

.logo {
  font-size: 4rem;
  font-weight: bold;
  color: #fff;
  font-family: 'Poiret One', cursive;
}

.nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
 
}

.nav-link {
  font-size: 1.4rem;
  color: #FFDF5A;
  text-decoration: none;
  font-family: 'Manjari', sans-serif;
  padding: 1rem;
  border-radius: 50px;
}

.nav-link:hover {
  color: #fff;
  background-color: #E5CFF7;
  opacity: 0.8;
  transition: 0.3s;
}

.nav-link.active {
  color: #fff;
  background-color: #713ABE;
}

/* Discover Games button */
.nav-link.logo {
  font-family: 'Poiret One', cursive;
  font-size: 2rem;
}
</style>
</head>
<body>
<header class="header">
  <div class="header-left">
    <a href="/" class="logo">Discover games</a>
  </div>

  <div class="header-right">
    <nav class="nav">
      <a href="MainPage.jsp" class="nav-link">Home</a>
      <a href="Games.jsp" class="nav-link">Games</a>
      <a href="/contact" class="nav-link">Contact</a>
      <a href="Games.jsp" class="nav-link">Explore</a>
      <a href="userAccount.jsp" class="nav-link">My profile</a>
    </nav>
  </div>
</header>
</body>
</html>