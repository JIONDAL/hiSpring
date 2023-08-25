<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<h3>회원 탈퇴</h3>
	<c:if test="${not empty msg }">
		<h4>${msg }</h4>
	</c:if>
	
	<form action="delete" method="post">
		<input type="text" value="${sessionScope.id }" readonly="readonly"> <br>
		<input type="password" placeholder="비밀번호" name="pw"><br> 
		<input type="password" placeholder="비밀번호 확인" name="confirmPw"><br> 
		<input type="submit" value="회원 탈퇴" >
		<input type="button" value="취소" onclick="location.href='index'">
	</form>
</body>
</html>







