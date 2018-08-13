<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br/>The name : ${student}
<br/>The First Name : ${student.firstName}
<br/>The Last Name : ${student.lastName}
<br/>The Country Name : ${student.country}
<br/>The favorite Language : ${student.favLang}
<br/>The Favorite OS
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li>${temp}</li>
		</c:forEach>
	</ul>


</body>
</html>