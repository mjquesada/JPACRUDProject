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
	<h5>${state.name}</h5>
	<p>Date Founded: ${state.dateFounded}</p>
	<p>Founder: ${state.founder}</p>
</div>

</body>
</html>