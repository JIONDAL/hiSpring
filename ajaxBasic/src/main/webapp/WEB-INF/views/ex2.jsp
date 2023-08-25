<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2</title>
<script>
	function send(){
		xhr = new XMLHttpRequest();
		xhr.open('post', 'ex2');
		var sendData = document.getElementById('id').value;
		xhr.send(sendData);
		xhr.onreadystatechange = resProc;
	}
	
	var xhr;
	function resProc(){
		if(xhr.readyState !== 4) 
			return;
	
		if(xhr.status === 200) {
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
	<input type='text' id="id" onchange="send()"/><br>
	<span id="print"></span><br>
</body>
</html>








