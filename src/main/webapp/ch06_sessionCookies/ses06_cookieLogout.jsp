<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();  //웹 브라우저에 저장된 쿠키를 가져옴
if(cookies!=null){
	for(int i=0; i<cookies.length;++i){
		if(cookies[i].getName().equals("id")){
			cookies[i].setMaxAge(0); //logout
			response.addCookie(cookies[i]);
		}
	}
}
%>
<script>
    alert("로그아웃 되었습니다");
	location.href="ses05_confirm.jsp";
</script>
</body>
</html>