<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

<form action="getState.do" method="GET">
	State ID: <input type="text" name="sid" />
	<input type="submit" value="Show State">
</form>

<form action="getAllStates.do" method="GET">
	<input type="submit" value="Show All States">
</form>


<%-- <%-- <ul>
<c:forEach var="state" items="${stateList}">
<li><a href="getState.do?sid=${state.id}">${state.name}</a></li>
</c:forEach>
</ul> --%> --%>

<!-- <form action="getList.do" method="GET">
List of States: <input type="text" name="listState" />
<input type="submit" value="List States">
 -->


</body>
</html>