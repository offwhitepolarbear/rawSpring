<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>

	<div style='text-align: center;'>
		<div class='circle'>약관조회</div>
		<p class='arrow'>→</p>
		<div class='circle'>회원유형선택</div>
		<p class='arrow'>→</p>
		<div class='circle'>소셜선택</div>
		<p class='arrow'>→</p>
		<div class='circle' style='background: #3DCF5A;'>회원정보입력</div>
		<p class='arrow'>→</p>
		<div class='circle'>가입완료</div>

		<hr>

		<div style='width: 50%; background-color: #F4F4F4;position: relative; left: 25%'>
			<div>
				<div style='display: inline-block; width: 150px; text-align: left;'>이메일</div>
				<div style='display: inline-block; '>
					<input type="text" maxlength="20" style='width: 300px'>
				</div>

			</div>
			<div>
				<div style='display: inline-block; width: 150px; text-align: left;'>비밀번호</div>
				<div style='display: inline-block;'>
					<input type="text" maxlength="20" style="width: 300px">
				</div>
			</div>
			<div>
				<div style='display: inline-block; width: 150px; text-align: left;'>비밀번호 확인</div>
				<div style='display: inline-block; '>
					<input type="text" maxlength="20" style='width: 300px'>
				</div>
			</div>
		</div>
		<br>
		<button type='button'>이전</button>
		<button type='button'>가입완료</button>

	</div>

</body>
</html>