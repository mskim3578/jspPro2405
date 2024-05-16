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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
		<h2>박명록</h2>
		<form method="post">
			<div class="form-group">
				<label for="name">이름</label> 
				<input type="text" class="form-control"
					id="name" placeholder="Enter name" name="name">
			</div>
			<div class="form-group">
				<label for="title">제목</label> 
				<input type="text"
					class="form-control" id="title" name="title" placeholder="Enter title"
					>
			</div>

			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5"  name="content"></textarea>
			</div>



			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	
						
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager
	.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic24", "1234");
	PreparedStatement pstmt=null;
	if (name!=null&&!name.equals("")){
		String title = request.getParameter("title");
		String content = request.getParameter("content");
	String sql = 
			"insert into guestbook values (bookseq.nextval,?,?,?,sysdate)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, title);
	pstmt.setString(3, content);
	int num = pstmt.executeUpdate();
	}
	
	pstmt = conn.prepareStatement("select * from guestbook  order by regdate desc");
	ResultSet rs = pstmt.executeQuery();
	
	
	%>
	<div class="container">
	<table class="table">
	<thead>
	<tr>
	<th>날자</th>
	<th>이름</th>
	<th>제목</th>
	<th>내용</th>
	</tr>	
	</thead>
	<tbody>
	<%  while(rs.next()){ %>
	<tr>
	<td><%=rs.getString("regdate") %></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("title") %></td>
	<td><%=rs.getString("content") %></td>
	</tr>	
	<% } %>
	</tbody>	
	</table>	
	</div>	
</body>
</html>