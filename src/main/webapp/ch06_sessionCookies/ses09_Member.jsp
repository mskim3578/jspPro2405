<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form method="post" action="ses10_MemberOk.jsp">
    <table width="300" border="1" >
      <tr> 
         <td  colspan="2"><div align="center">로그인</div></td>
       </tr>
       <tr> 
          <td width="100" >아이디</td>
          <td width="200" ><input type="text" name="id"></td>
       </tr>
       <tr> 
          <td width="100" >비밀번호</td>
          <td width="200" ><input type="password" name="passwd"></td>
       </tr>
       <tr> 
          <td colspan="2" align="center">
		    <input type="submit" value="로그인">
                &nbsp;&nbsp;&nbsp;
            <input type="reset" value="다시작성">
          </td>
      </tr>
    </table>
  </form>
</body>
</html>