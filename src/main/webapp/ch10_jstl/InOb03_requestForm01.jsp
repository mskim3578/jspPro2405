<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="request1.jsp" method="post">
		<input type="hidden" value="tsest 입니다"  name="test"> 이름:<input type="text" name="name"><br>
		나이:<input type="text"   name="age"><br> 성별:
		<input type="radio" value="1" name="gender">남 
		<input type="radio" value="2" name="gender">여<br>
		취미:<input type="checkbox" value="요리" name="hobby">요리 
		<input type="checkbox" 	value="여행"  name="hobby">여행 
		<input type="checkbox" value="야구" name="hobby">야구 
		<input 	type="checkbox" value="축구" name="hobby">축구 
		<input type="checkbox"  value="독서" name="hobby">독서 
		<input type="checkbox" value="게임" name="hobby">게임<br>

		출생년도 : <select name="year">
		<c:forEach var="i" begin="1980"  end="1999">
		<option>${i}</option>
		</c:forEach>
		</select> 
		<input type="submit" value="전송">
	</form>
</body>
</html>
