<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문</title>
</head>
<body>


10 * 25 = <%= multiply(10, 25) %><br>
<%=name %>
<%!  String name="선언문" ; %>

<%!
	public int multiply(int a , int b) {
		int c = a * b;
		return c;
	}
%>
</body>
</html>