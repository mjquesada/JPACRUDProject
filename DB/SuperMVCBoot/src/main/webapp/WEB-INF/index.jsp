<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Home</title>
</head>
<body>

	<form action="getState.do" method="GET">
		State ID: <input type="text" name="sid" /><br> <input
			type="submit" value="Show State">
	</form>

	<br>

	<form action="getAllStates.do" method="GET">
		<input type="submit" value="Show All States">
	</form>
	
	<br>

	<form action="createObjectForController.do" method="POST">
		<%-- <input type="hidden" value="${state.id}" name="updateId"> --%>
		<input type="submit" value="Create State">

	</form>


</body>
</html>