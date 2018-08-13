<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
		<br/>First Name: <form:input path="firstName" />
		<br/>Last Name: <form:input path="lastName" />
		<br/>Country: 
			<form:select path="country">
			<%--
				<form:option value="Brazil" label="Brazil"/>		
				<form:option value="India" label="India"/>		
				<form:option value="France" label="France"/>		
				<form:option value="Germany" label="Germany"/>	
			--%>
				<form:options items="${student.countryOptions}"/>	
			</form:select>
			
		<br/>Choose Your Favorite language
			Java: <form:radiobutton path="favLang" value="Java"/>
			C++: <form:radiobutton path="favLang" value="C++"/>
			Dot Net: <form:radiobutton path="favLang" value="Dot net"/>
			Php: <form:radiobutton path="favLang" value="Php"/>
			
		<br/>Choose Your fav OS:
			Linux: <form:checkbox path="operatingSystems" value="linux"/>
			Windows: <form:checkbox path="operatingSystems" value="windows"/>
			Mac: <form:checkbox path="operatingSystems" value="mac"/>
			Solaris: <form:checkbox path="operatingSystems" value="solaris"/>
			
			
		<br/><input type="submit" value="Submit"/>
	</form:form>

</body>
</html>