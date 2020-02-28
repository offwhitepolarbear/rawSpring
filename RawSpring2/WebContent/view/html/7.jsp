<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이징 처리 html</title>
<style type="text/css">
.tableBlock {
	display: inline-block;
	height: 50px;
	width: 30%;
	border: 1px;
	border-style: solid;
	font-size: 24pt;
}
</style>
</head>
<body>
<div class='mainContainer' style='width: 50%;position: relative;left: 25%;'>
	국가선택
	<select>
		<option>대한민국</option>
	</select>
	<button type="button"
		style="display: inline-block; width: 15%; background-color: #04B45F">엑셀
		업로드</button>
	<button type="button"
		style="display: inline-block; width: 15%; background-color: #04B45F">엑셀
		다운로드</button>
	<div style="clear: both;"></div>
	<div style='height: 200px;'></div>
	<div class='table' style='text-align: center;'>
		<div class='tableHead'>
			<div class='tableBlock' style='background-color: #D6C5C5;'>내용
			</div><div class='tableBlock' style='background-color: #D6C5C5;'>관리코드</div>
		</div>
		<div class='tableRow'>
			<div class='tableBlock'>국내특허평가
			</div><div class='tableBlock'>KR00001</div>
		</div>
		<div class='tableRow'>
			<div class='tableBlock'>한국특허
			</div><div class='tableBlock'>KR00002</div>
		</div>
		<div class='tableRow'>
			<div class='tableBlock'>미국특허
			</div><div class='tableBlock'>KR00003</div>
		</div>
	</div>

	<div class='pageNavigator' style='text-align: center; padding: 1%;'>
		<button type='button'>&lt;&lt;</button>
		<button type='button'>1</button>
		<button type='button'>2</button>
		<button type='button'>3</button>
		<button type='button'>4</button>
		<button type='button'>5</button>
		<button type='button'>&gt;&gt;</button>
	</div>
	
	<button type='button' style='width: 20%; position: relative; left: 70%;' >추가</button>
</div>
</body>
</html>