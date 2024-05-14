<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	String id = "";
	try{
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
	   for(int i=0; i<cookies.length; i++){
          if(cookies[i].getName().equals("id")){
			id = cookies[i].getValue();		  }	   }
	   
	   if(id.equals(""))
	   {response.sendRedirect("ses03_Member.jsp");
	   }	
	}else{response.sendRedirect("ses03_Member.jsp");}
  }catch(Exception e){}%>
 <form method="post" action="ses06_cookieLogout.jsp">
    <table width="300" border="1"  >
      <tr> 
         <td align="center" ><b><%= id %></b>님이 로그인 하셨습니다. 
         </td>	  </tr>	  <tr>
		 <td align="center" >
		   <input type="submit" value="로그아웃">
		 </td>      </tr>    </table>  </form>
</body>
</html>