<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>All States</title>
</head>
<body>
	<div>
		<h3>Here are all the states in the database:</h3>
		<ul>
			<c:forEach var="state" items="${stateList}">
				<li><a href="getState.do?sid=${state.id}">${state.name}</a></li>
			</c:forEach>
		</ul>

		<form action="/" method="GET">
			<input type="submit" value="Home">
		</form>
	</div>

</body>
</html>