<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Update State</title>
</head>
<body>
	<h3>Please enter a new state</h3>
	<form:form action="updateState.do" method="POST" modelAttribute="state">

		<table>
			<tr>
				<td><form:label path="name"> Name: </form:label></td>
				<td><form:input path="name" /></td>
			</tr>

			<tr>
				<td><form:label path="greatestLeader"> Greatest Leader: </form:label></td>
				<td><form:input path="greatestLeader" /></td>
			</tr>

			<tr>
				<td><form:label path="founder"> Founder: </form:label></td>
				<td><form:input path="founder" /></td>
			</tr>

			<tr>
				<td><form:label path="population"> Population: </form:label></td>
				<td><form:input path="population" /></td>
			</tr>

			<tr>
				<td><form:label path="language"> Language: </form:label></td>
				<td><form:input path="language" /></td>
			</tr>

			<tr>
				<td><form:label path="religion"> Religion: </form:label></td>
				<td><form:input path="religion" /></td>
			</tr>

			<tr>
				<td><form:label path="dateFounded"> Date Founded: </form:label></td>
				<td><form:input path="dateFounded" /></td>
			</tr>

			<tr>
				<td><form:label path="dateEnded"> Date Ended: </form:label></td>
				<td><form:input path="dateEnded" /></td>
			</tr>


			<tr>
				<td><input type="submit" value="Update" /></td>
				<td><input type="hidden" value="${state.id}" name="updateS"></td>
			</tr>


		</table>
	</form:form>

	<form action="/" method="GET">
		<input type="submit" value="Home">
	</form>

</body>
</html>