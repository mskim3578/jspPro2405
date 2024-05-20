<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1.request.getParameter("age");<br>
2.request.getParameterValues("hobby"); <br>
3.request.getParameterNames();<br>
4.request.getParameterMap();<br>
<hr>
<fmt:requestEncoding value="UTF-8" />
이름:${param.name}<br>
나이:${param.age}<br>
성별:${param.gender==1?"남":"여"}<br>
취미:${param.hobby}<br>
년도:${param.year}<br>
test:${param.test}<br>
<h2>요청파라미터에 저장된 모든 값 조회하기 </h2>
<h3>취미 :</h3>

<c:forEach var="h"  items="${paramValues.hobby}">
${h}&nbsp;&nbsp;&nbsp;
</c:forEach><br>

<table>
  <tr><th>파라미터이름(Enumeration)</th><th>파라미터값</th></tr>
<c:forEach var="e"  items="${paramValues}">
 <tr><td>${e.key}</td>
     <td>     
     <c:forEach var="value" items="${e.value}">
      ${value}&nbsp;&nbsp;&nbsp;
     </c:forEach>         
         </td>
 </tr></c:forEach> 
</table>




</body>
</html>