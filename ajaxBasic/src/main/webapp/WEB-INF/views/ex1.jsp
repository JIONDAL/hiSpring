<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex1</title>
<script>
	function send(){
		// Ajax 요청을 초기화합니다
		/* 
		서버로 요청만 함
		var xhr = new XMLHttpRequest();
		xhr.open('post', 'ex1a');
		xhr.send(); 
		*/
		
		
	/* 	
		var xhr = new XMLHttpRequest();
		xhr.open('post', 'ex1b');
		var sendData = 'ex1.jsp에서 전달한 데이터';
		xhr.send(sendData); 
		
	*/
	
	xhr = new XMLHttpRequest();
	xhr.open('post', 'ex1c');
	var sendData = 'ex1.jsp에서 전달한 데이터';
	xhr.send(sendData);
		// 요청의 상태 변화를 추적합니다
	 	xhr.onreadystatechange = resProc;
	}
	var xhr;
	function resProc(){
		if(xhr.readyState !== 4) return;
		// readyState 4: 완료
	
		if(xhr.status === 200) {
	    // status 200: 성공
			console.log(xhr.responseText); // '반환된 텍스트'
			var print = document.getElementById('print');
			print.innerHTML = xhr.responseText;
		} else {
			console.log('에러: ' + xhr.status); // 요청 도중 에러 발생
		}
	}
	
</script>
</head>
<body>
	<div id="print">출력 데이터</div>
	<button type="button" onclick="send()">데이터 가져오기</button>
</body>
</html>








