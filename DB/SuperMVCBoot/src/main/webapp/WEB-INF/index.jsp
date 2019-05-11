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
	State ID: <input type="text" name="sid" /><br>
	<input type="submit" value="Show State">
</form>

<br>
<form action="getAllStates.do" method="GET">
	<input type="submit" value="Show All States">
</form>

<form action="createObjectForController.do" method="POST">
	<%-- <input type="hidden" value="${state.id}" name="updateId"> --%>
	<input type="submit" value="Create State">
	
</form>

</body>
</html>