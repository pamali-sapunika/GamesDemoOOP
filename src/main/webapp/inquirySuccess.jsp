<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry Successful</title>
</head>
<body>

	<h1>Inquiry Success!</h1><br>
	
    <c:forEach var="inqq" items="${inqDetails}">
    
    <c:set var="inqid" value="${inqq.id}"/>
    <c:set var="name" value="${inqq.cusName}"/>
    <c:set var="email" value="${inqq.cusEmail}"/>
    <c:set var="inquiry" value="${inqq.cusInquiry}"/>
    
   		Inquiry ID   	  ${inqq.id}<br>
    	Name       		  ${inqq.cusName}<br>
    	Email             ${inqq.cusEmail}<br>
    	Inquiry Message   ${inqq.cusInquiry}<br>
    
	</c:forEach>
	
	<!-- Update Inquiry part -->
	
	<c:url value="UpdateInquiry.jsp" var="inqUpdate">
	
		<c:param name="id" value="${inqid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="inquiry" value="${inquiry}"/>
		
	</c:url>

	<a href="${inqUpdate}">
	<input type="button" name="update" value="Update Inquiry">
	</a>
	
	
	<!-- Delete Inquiry part -->
	
	<c:url value="DeleteInquiry.jsp" var="inqDelete">
	
		<c:param name="id" value="${inqid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="inquiry" value="${inquiry}"/>
		
	</c:url>

	<a href="${inqDelete}">
	<input type="button" name="delete" value="Delete Inquiry">
	</a>
	
	
	
</body>
</html>