<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="/javascript/bootstrap/css/bootstrap.min.css" />
<style type="text/css">
#phoneNumber {
	width: 100%;
}
</style>
<meta charset="UTF-8">
<title>게시판 회원 가입</title>
</head>
<body>

	<div class="container">
	<hr>
	<p>
		<form id='registration' action='/user/addUser' method="post">
			이메일 <input type="text" class="form-control" name='email' id ='email' maxlength='50'
			placeholder='게시판id로 사용하실 email을 입력해주세요'>
			<div id='underEmail'></div>
			
			비밀번호 <input type="password" class="form-control" name='password' id='password' maxlength="16" 
			placeholder="영문/숫자/특수문자를 모두 포함한 8~16자리">
			<div id='underPassword'></div>
			
			비밀번호확인 <input type="password" class="form-control" name='password2' id='password2' maxlength="16"
			placeholder="윗칸의 비밀번호와 동일하게 입력해주세요">
			<div id='underPassword2'></div>
			
			이름 <input type="text" class="form-control" name='name' id = 'name' maxlength="20"
			 placeholder="이름을 입력해주세요"> 
			<div id='underName'></div>
			
			닉네임 <input	type="text" class="form-control" name='nickname' id='nickname' maxlength="20"
			 placeholder="사용하실 닉네임을 입력해주세요"> 
			<div id='underNickname'></div>
			
			전화번호
			<div class="input-group" id='phoneNumber'>
				<select class="custom-select custom-select" name='phoneHead'>
					<option value="010" selected>010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select> 
				<input type="text" class="form-control" name='phoneBody' id ='phoneBody' maxlength='4'> 
				
				<input type="text" class="form-control" name='phoneTail' id='phoneTail' maxlength='4'>
			</div>
			<div id='underPhoneNumber'>몸통</div>
		</form>
		<hr>
		<button type="button" class="btn btn-outline-primary btn-lg btn-block"
			id='registrationButton'>가입</button>
	</div>
	
</body>

<script type="text/javascript"
	src="/javascript/jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="/javascript/bootstrap/js/popper.min.js"></script>
<script type="text/javascript"
	src="/javascript/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">

	var isEmailOk = false;
	var isPasswordOk = false;
	var isPassword2Ok = false;
	var isNameOk = false;
	var isNicknameOk = false;
	var isPhoneBodyOk = false;
	var isPhoneTailOk = false;
	
	//가입버튼 클릭시 회원가입 입력양식form을 user/addUser로 포스트 전송
	$("#registrationButton").click(function() {
		if(isEmailOk && isPasswordOk && isPassword2Ok && isNameOk && isNicknameOk && isPhoneBodyOk && isPhoneTailOk){
			$("#registration").attr("action","/user/addUser").attr("method", "POST").submit();
		}
		else{
			alert("가입양식을 다시 한번 확인해주세요");
		}
	});
	
	//이메일 유효성체크기능
	$("#email").focusout(function(){
		
		isEmailOk = false;
		
		var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var emailValue = $("#email").val();
		
		if(emailCheck.test(emailValue)){
			isEmailOk = true;
			$("#underEmail").empty();
		}
		
		if(!emailCheck.test(emailValue)){
			var emailTag = alertTagMaker("올바른 이메일 양식이 아닙니다.");
			$("#underEmail").html(emailTag);
		}
		
	});
	
	//비밀번호 유효성 체크기능
	$("#password").focusout(function(){
		
		isPasswordOk = false;
		
		// 숫자 /영어 /특수문자/ 모두 포함된 8~16자리 정규식
		var passwordCheck = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
		var passwordValue = $("#password").val()
		
		if(!passwordCheck.test(passwordValue)) {
			var passwordTag = alertTagMaker("숫자/영어 /특수문자/세가지로 이루어진  8~16자리");
			$("#underPassword").html(passwordTag);
		}
		
		if(passwordCheck.test(passwordValue)){
			isPasswordOk = true;
			$("#underPassword").empty();
		}
		
		$("#password2").trigger("focusout");
	});
	
	//비밀번호 확인 체크기능
	$("#password2").focusout(function(){
		
		isPassword2Ok = false;
		
		if($("#password2").val() == $("#password").val()){
			isPassword2Ok = true;
			$("#underPassword2").empty();
		}
		
		if($("#password2").val() != $("#password").val()){
			var passwordTag = alertTagMaker("비밀번호 칸과 값이 동일하지 않습니다. 확인해주세요");
			$("#underPassword2").html(passwordTag);
		}
	});
	
	//이름 유효성 체크 부분
	$("#name").focusout(function(){
		
		isNameOk = false;

		// 한글 영문만 있으면 true
		var checkKorEng = /^[가-힣|a-z|A-Z|\*]+$/
		// 공백이 있으면 true
		//var blank = /\s/;
		
		var nameValue= $("#name").val();
		
		if(checkKorEng.test(nameValue)){
			isNameOk = true;
			$("#underName").empty();
		}
		
		if(!checkKorEng.test(nameValue)){
			var nameTag = alertTagMaker("한글과 영문으로만 입력해주세요");
			$("#underName").html(nameTag);
		}
		
	});
	
	// 닉네임 유효성체크 및 경고메시지
	$("#nickname").focusout(function(){
		
		isNicknameOk = false;
		
		//공백이 있으면 true
		var blank = /\s/;
		var nicknameValue = $("#nickname").val();
		
		if(blank.test(nicknameValue)){
			var nickNameTag = alertTagMaker("공백문자는 사용하실 수 없습니다.")
			$("#underNickname").html(nickNameTag);
		}
		
		if(!blank.test(nicknameValue)){
			isNicknameOk = true;
			$("#underNickname").empty();
		}
	});
	
	$("#phoneBody").focusout(function() {
		
		isPhoneBodyOk = false;
		
		//숫자만 3개 혹은 4개여야 true
		var numberOnly = /^\d{3,4}$/;
		var phoneBody = $("#phoneBody").val();
		
		if(numberOnly.test(phoneBody)){
			isPhoneBodyOk = true;
			if(isPhoneTailOk){
				$("#underPhoneNumber").empty();
			}
		}
		
		if(!numberOnly.test(phoneBody)){
			var numberTag = alertTagMaker("전화번호를 올바르게 입력해주세요");
			$("#underPhoneNumber").html(numberTag);
		}
		
	});
	
	$("#phoneTail").focusout(function() {
		
		isPhoneTailOk = false;
		
		//숫자만 4개여야 통과
		var numberOnly=/^\d{4}$/;
		var phoneTail = $("#phoneTail").val();
		
		if(numberOnly.test(phoneTail)){
			isPhoneTailOk = true;
			if(isPhoneBodyOk){
				$("#underPhoneNumber").empty();
			}
		}
		
		if(!numberOnly.test(phoneTail)){
			var numberTag = alertTagMaker("전화번호를 올바르게 입력해주세요");
			$("#underPhoneNumber").html(numberTag);
		}
		
	});
	
function alertTagMaker(tagMessage){
	var resultTag = "<div class='alert alert-danger' role='alert'>";
	resultTag += tagMessage;
	resultTag +="</div>"
	return resultTag;
}
</script>



</html>