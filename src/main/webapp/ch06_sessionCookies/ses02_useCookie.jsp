<%@page import="java.net.URLDecoder"%>
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
%>			쿠키의 이름은 "<%=cookies[i].getName()%>" 이고 
			<%-- 	쿠키의 값 "<%=cookies[i].getValue()%>" 입니다. --%>
		쿠키의 값 "<%=URLDecoder.decode(cookies[i].getValue(), "utf-8")%>" 입니다.
			
<%
			} 
		}
	}
%>
</body>
</html>