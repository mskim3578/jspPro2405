<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합계 결과 보기</title>
<script>
function calcsum(k, f) {
	f.kind.value=k
	f.submit();
}
//onsubmit=은  <input type="submit"  입력 시에 적용된다
//f.submit();일때에는 적용 않된다
</script>

</head>
<body>
<form action="request2.jsp" method="post"  onsubmit="prompt('확인')">
   <input type="hidden" name="kind" value="0">
   <input type="text" name="num">까지의 합 구하기
   <input type="submit" value="합계구하기">
   <input type="button" value="짝수합구하기" onclick="calcsum(2,this.form)">
   <input type="button" value="홀수합구하기" onclick="calcsum(1,this.form)">
</form>
</body>
</html>