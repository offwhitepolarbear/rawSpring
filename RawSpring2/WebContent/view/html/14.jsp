<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.centerContainer{
position:relative;
left: 50%;
width: 480px;
margin-left: -240px;
}

p{
font-size: 13pt;
font-weight: 700;
padding-bottom: -3px; 
}

.inputBox{
height: 24pt;
padding-left: 5pt;
padding-rigth: 5pt;
border-radius: 3pt;
width:100%;
font-size: 14pt;
}

.buttonrize{
background-color: #5882FA;
color:white;
padding:3pt;
border-radius: 2pt;
cursor:pointer;
}

</style>

</head>
<body>

	<div class='centerContainer'>
		
		<p>아이디</p>
		<div>
			<input type='text' class='inputBox' maxlength="20" placeholder="사용하실 아이디">
		</div>
		<div id='underId'></div>
		
		<p>비밀번호</p>
		<div>
			<input type='text' class='inputBox' maxlength="20">
		</div>
		<div id='underPassword'></div>
		<div>
			비밀번호 규칙은 ㅁㅁㅁ입니다.
		</div>
		
		<p><span class='buttonrize' style="float: right;">비밀번호 표시</span></p>
		
		<p>비밀번호 확인</p>
		<div>
			<input type='text' class='inputBox' maxlength="20">
		</div>
		
		<p>닉네임</p>
		<div>
			<input type='text' class='inputBox' maxlength="20" placeholder="사용하실 닉네임">
		</div>
		
		<p>성 이름</p>
		<div>
			<input type='text' class='inputBox' style='width: 224px;' maxlength="10" placeholder="성">
			<input type='text' class='inputBox' style='width: 224px;' maxlength="10" placeholder="이름">
		</div>
		
		<p>생년월일</p>
		<div>
		datepicker 추가 예정
		</div>
				
		<p>메일</p>
		<div>
			<input type='text' class='inputBox'>
		</div>
		
		<p>전화번호</p>
		<div>
			<select class='inputBox' style='width: 20%; height: 28pt; font-size: 14pt;'>
			<option>010</option>
			<option>011</option>
			<option>016</option>
			<option>017</option>
			<option>018</option>
			<option>019</option>
			</select>
			<input type='text' class='inputBox' style='width: 50%;'maxlength="8">
			<div class='buttonrize' style='font-size:14pt ;height: 22pt; display: inline-block;'>인증번호전송</div>
		</div>
		<div style='height: 16pt;'></div>
		<div class='buttonrize' style='font-size:16pt;height:40px;width: 120px;position: relative; left:180px;text-align: center; margin: 0;'>
			가입하기
		</div>
	
	</div>

</body>
</html>