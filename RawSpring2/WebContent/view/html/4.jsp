<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.circle {
	width: 192px;
	height: 192px;
	border-radius: 50%;
	border: 2px;
	border-style: solid;
	display: inline-block;
	text-align: center;
	line-height: 192px;
	font-size: 24pt;
}

.arrow {
	display: inline-block;
	font-size: 36pt;
	font-weight: 900;
}

.divBox {
	width: 288px;
	height: 480px;
	border-radius: 5%;
	border: 1px;
	border-style: solid;
	display: inline-block;
	text-align: center;
	background-color: #F4F4F4;
}

.registerButton {
	border-radius: 10%;
	border: 1px;
	border-style: solid;
	position: relative;
	top: 2%;
	left: 25%;
	width: 50%;
	background-color: white;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style='text-align: center;'>
		<div class='circle'>약관조회</div>
		<p class='arrow'>→</p>
		<div class='circle' style='background: #3DCF5A;'>회원유형선택</div>
		<p class='arrow'>→</p>
		<div class='circle'>소셜선택</div>
		<p class='arrow'>→</p>
		<div class='circle'>회원정보입력</div>
		<p class='arrow'>→</p>
		<div class='circle'>가입완료</div>
	</div>
	<hr>

	<p style='text-align: center; font-size: 24pt;'>회원 유형 선택</p>
	<div style='text-align: center;'>
		<div class='divBox'>
		<br>
			건별회원
			<img src="/resources/test/tiger.jpg" width='200' height='360' style='padding: 5%'>
			<div class='registerButton' id='perWork'>회원가입</div>
		</div>
		<div style='display: inline-block; width: 10%;'></div>
		<div class='divBox'>
		<br>
			연간회원
			<img src="/resources/test/lion.png" width='200' height='360' style='padding: 5%'>
			<div class='registerButton' id='perYear'>회원가입</div>
		</div>
	</div>
</body>
</html>