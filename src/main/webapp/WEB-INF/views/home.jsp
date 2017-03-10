<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watson - Language Translation</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<legend class="header">CURUGAN AND CORPUZ - Language Translation Service</legend>
	<marquee><img src="curugan.jpg"></marquee>
	<form method="POST" action="home">
		<p class="tr-selector">
			<select name="tr-model-id">
				<option value="en-ar">English - Arabic</option>
				<option value="en-fr">English - French</option>
				<option value="en-pt">English - Portuguese</option>
				<option value="en-es">English - Spanish</option>
			</select>
			<button class="tr-action" type="submit">Translate</button>
		</p>

		<div class="panel">
			<textarea class="tr-input" name="tr-from" rows="10"><c:if
					test="${!empty text}">${text}</c:if></textarea>
		</div>

		<div class="panel">
			<textarea class="tr-input" name="tr-to" rows="10"><c:if
					test="${!empty translation}">${translation}</c:if></textarea>
		</div>

	</form>

</body>
</html>