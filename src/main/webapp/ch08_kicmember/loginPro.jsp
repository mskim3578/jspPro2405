<%@page import="ch08.KicMemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
//Connection 객체 
KicMemberDAO  dao = new KicMemberDAO();
String msg=id +"님이 로그인 하셨습니다";
String url="index.jsp";
   String dpass = dao.getMember(id);
  if (dpass!=null) {
	if (pass.equals(dpass)) {
		//session
	} else {
		msg="비밀번호가 맞지 않습니다";
		url="login.jsp";	}
} else {
	msg="id를 확인 하세요";	url="login.jsp";}
%>
<script>
alert("<%=msg%>");
location.href="<%=url%>"
</script>
<%=id %>
<%=pass %>
</body>
</html>