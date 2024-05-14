<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	if (session.getAttribute("id")==null){
	response.sendRedirect("ses09_Member.jsp");
     }


%>
 <form method="post" action="ses12_sessionLogout.jsp">
    <table width="300" border="1"  >
      <tr> 
         <td align="center" ><b><%= session.getAttribute("id") %></b>님이 로그인 하셨습니다. 
         </td>	  </tr>	  <tr>
		 <td align="center" >
		   <input type="submit" value="로그아웃">
		 </td>      </tr>    </table>  </form>
</body>
</html>