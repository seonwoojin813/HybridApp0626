<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Native App과의 통신</title>
</head>
<body>
    <h3>토스트로 출력할 메시지 입력</h3>
     전송할 메시지:<input type="text" id="toastmessageinput" />
     <br />
     <input type="button" id="showtoast"
     value="메시지 전송" />
     
     <br />
     <h3>네이티브 앱에서 전송한 메시지</h3>
     전달받은 메시지:
     <div id="nativemessage"
     style="overflow-y:auto; heigth:300px;">
     </div>
     
     <script>
     //버튼 눌렀을 때 이벤트 처리
     document.getElementById("showtoast")
     .addEventListener("click", function(e){
    	//네이티브 앱의 메소드 호출 
    	 MYApp.showToastMessage(
    			 document.getElementById(
    			 "toastmessageinput").value);
     })
     
     //Native App에서 호출할 자바스크립트 함수
     function showDisplayMessage(message){
    	 document.getElementById("nativemessage")
    	 .innerHTML = message
     }
     </script>
     
     
</body>
</html>