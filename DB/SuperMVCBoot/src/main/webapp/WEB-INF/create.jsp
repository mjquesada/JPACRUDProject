<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create State</title>
</head>
<body>
<h3>Create a new state</h3>
<form:form action="createState.do" method="POST" modelAttribute="state">

<table>
<tr>
<td><form:label path="name"> Name: </form:label></td>
<td><form:input path="name"/></td>
</tr> 

<tr>
<td><form:label path="greatestLeader"> Greatest Leader: </form:label></td>
<td><form:input path="greatestLeader"/></td>
</tr> 

<tr>
<td><form:label path="founder"> Founder: </form:label></td>
<td><form:input path="founder"/></td>
</tr> 

<tr>
<td><form:label path="population"> Population: </form:label></td>
<td><form:input path="population"/></td>
</tr>

<tr>
<td><form:label path="language"> Language: </form:label></td>
<td><form:input path="language"/></td>
</tr>  

<tr>
<td><form:label path="religion"> Religion: </form:label></td>
<td><form:input path="religion"/></td>
</tr> 

<tr>
<td><form:label path="dateFounded"> Date Founded: </form:label></td>
<td><form:input path="dateFounded"/></td>
</tr> 

<tr>
<td><form:label path="dateEnded"> Date Ended: </form:label></td>
<td><form:input path="dateEnded"/></td>
</tr> 

<tr>
<td><form:label path="legacy"> Legacy: </form:label></td>
<td><form:input path="legacy"/></td>
</tr> 

<tr>
<td><input type="submit" value="Submit"/></td>
</tr>

</table> 
</form:form>

<form action="/" method="GET">
	<input type="submit" value="Home">
</form>

</body>
</html>