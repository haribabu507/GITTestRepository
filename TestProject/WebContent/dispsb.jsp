<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
<table>
<tr><td>PNAME</td><td><input type="text" name="pn" value="<%session.getAttribute("nm"); %>"></td></tr>
<tr><td>PRICE</td><td><input type="text" name="pr" value=<%session.getAttribute("pc"); %>></td></tr>
<tr><td><input type="submit" value="SUBMIT" ></td></tr>
</table>
</form>
</body>
</html>