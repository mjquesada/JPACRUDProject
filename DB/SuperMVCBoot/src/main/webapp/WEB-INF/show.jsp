<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>State Details</title>
</head>
<body>

<div>
	<h3>${state.name}</h3>
	<p>Date Founded: ${state.dateFounded}</p>
	<p>Founder: ${state.founder}</p>
	<p>Greatest Leader: ${state.greatestLeader}</p>
	<p>Population: ${state.population}</p>
	<p>Language: ${state.language}</p>
	<p>Religion: ${state.religion}</p>
	<p>Date Founded: ${state.dateFounded}</p>
	<p>Date Ended: ${state.dateEnded}</p>
	<p>Legacy: ${state.legacy}</p>
</div>

<div>

<form action="getStateToUpdate.do" method="GET">
	<input type="hidden" value="${state.id}" name="updateId">
	<input type="submit" value="Update State">
	
</form>


<form action="destroyState.do" method="GET">
	<input type="hidden" value="${state.id}" name="destroyId">
	<input type="submit" value="Destroy State">
</form>

<form action="/" method="GET">
	<input type="submit" value="Home">
</form>


</div>

</body>
</html>