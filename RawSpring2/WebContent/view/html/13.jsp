<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구글회원가입화면복제</title>

<style type="text/css">
body{

}
.container{
position:relative;
left:50%;
margin-left:-400px;
width:800px;
border: 1px;
border-style: solid;
border-color: #D8D8D8;
border-radius: 5px;
}

div{

}

input{
padding-left:10pt;
margin-top: 10px;
margin-bottom: 10px;
height:24pt;
width:40%;
border-radius:5%;
}

</style>
</head>
<body>
<div class='container' id='container'>
	<div style='margin-left: 50px; width: 500px; background-color: ; display: inline-block;'>
	<div >
		<img src="/resources/test/google.jpg" style="width: 20%; margin-left: -20px;">
		<div style='font-size: 18pt;'>Google 계정 만들기</div>
		<div>
			<input type="text" placeholder=" 성" maxlength="30"> 
			<input type="text" placeholder=" 이름" maxlength="30">
		</div>
		<div><input type="text" placeholder=" 사용자 이름" style='width: 422px;'maxlength="30"><span style='margin: -100px;'>@gmail.com</span></div>
		<div style='font-size: 10pt;'>문자, 숫자, 마침표를 사용할 수 있습니다</div>
		<div style='color: #5882FA; font-size: 10pt;'>대신 현재 이메일 주소 사용</div>
		<div>
			<input type="text" placeholder=" 비밀번호" maxlength="20">
			<inputtype="text" placeholder=" 확인" maxlength="20"> 
		</div>
		<div style='font-size: 10pt;'>문자, 숫자, 기호를 조합하여 8자 이상을 사용하세요</div>
		
		<div style='color: #5882FA; font-size: 10pt;'>
			대신 로그인하기
			<button type="button" style='position: relative;left: 55%; width:12%; height:28pt;background-color: #5882FA;font-size: 14pt;color: white;'>
			다음</button>
		</div>
		<div style='height: 20pt;'>
		</div>
	</div>
	
	</div>
	<div style="display: inline-block; position: relative; top: -20px;">
		<img src="/resources/test/account.svg" style="width: 240px;">
		<div>하나의 계정으로 모든 Google</div>
		<div>서비스를 이용할 수 있습니다.</div>
	</div>
	
</div>
<script type="text/javascript">
</script>
</body>
</html>