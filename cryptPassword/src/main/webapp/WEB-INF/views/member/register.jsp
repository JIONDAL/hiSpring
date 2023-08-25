<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header" />

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
				if(data.userSelectedType === 'R'){
					document.getElementById('address').value= data.roadAddress;
				}else{
					document.getElementById('address').value= data.jibunAddress;
				}
				document.getElementById('postcode').value= data.zonecode;
              /*  
	          	console.log(data.userSelectedType)
	            console.log(data.roadAddress)
	            console.log(data.jibunAddress)
	            console.log(data.zonecode)
               */
            }
        }).open();
    }
</script>
<div align="center">
	<h1>회원 등록</h1>
	<table ><tr><td>
	<form action="registerProc" method="post" id="f">
		<input type="text" name="id" placeholder="아이디" id="id"> (*필수 항목) <br>
		<input type="password" name="pw" placeholder="비밀번호" id="pw"><br>
		<input type="password" name="confirm" placeholder="비밀번호 확인 " id="confirm"
		onchange="pwCheck()">
		<label id="label" ></label><br>
		<input type="text" name="userName" id="userName" placeholder="이름" ><br>
		
		<input type="text" id="postcode" name="postcode" placeholder="우편번호">
		<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="address" name="address" placeholder="주소"><br>
		<input type="text" id="detailAddress" name="detailAddress" placeholder="상세주소"><br>

		<input type="text" name="mobile" placeholder="전화번호" ><br>
		<input type="button" value="회원가입" onclick="allCheck()">
		<input type="button" value="취소" onclick="location.href='index'"><br>
	</form>
	</td></tr></table>
</div>

<c:import url="/footer" />



