<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html {
	min-height: 800px;
	min-width: 1000px;
}
.row{
clear: both;
background-color: skyblue;
}
.column {
	display: inline-block;
	background-color: #00AA9C;
}
.columnSpace{
width: 15%;
}
.column1 {
	width: 20%;
}

.column2 {
	width: 35%;
}

.column3 {
	width: 25%;
}
.line{
	height: 20px;
}
</style>
</head>
<body>
	<div style='width: 90%; position: relative; left: 5%;'>
		<div
			style="width: 90%; position: relative; left: 5%; background-color: grey; ">
			<div style='width: 50%; position: relative; left: 25%;'>
				<div style="height: 100px;"></div>
				<div class='row'>
				<div class='column columnSpace'></div>
					<div class='column column1'>이메일</div>
					<div class='column column2'>
						<input type="text" style='width: 100%;'maxlength="50">
					</div>
					<div class='column column3'>
						<button type="button">중복확인</button>
					</div>
				</div>
				<div class='line'></div>
				<div class='row'>
				<div class='column columnSpace'></div>
					<div class='column column1'>비밀번호</div>
					<div class='column column2'>
						<input type="text" style='width: 100%;'maxlength="20">
					</div>
				</div>
				<div class='line'></div>
				<div class='row'>
				<div class='column columnSpace'></div>
					<div class='column column1'>비밀번호확인</div>
					<div class='column column2'>
						<input type="text" style='width: 100%;'maxlength="20">
					</div>
				</div>
				<div style="height: 100px;"></div>
				<div style="width:80%; position: relative;left: 10%; text-align: center;">
				<div class='column columnSpace'></div>
					<button type="button" style='width:40%;'>이전</button>
					<button type="button" style='width:40%;'>가입완료</button>
				</div>
				<div class='line'></div>

			</div>
		</div>
	</div>
</body>
</html>