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
			이메일 <div class='input-group'>
				<input type="text" class="form-control" name='email'>@
				<input type="text" class="form-control" name='emailTail'>
				</div>
			비밀번호 <input type="password" class="form-control" name='password'>
			비밀번호확인 <input type="password" class="form-control" name='password2'>
			이름 <input type="text" class="form-control" name='name'> 닉네임 <input
				type="text" class="form-control" name='nickname'> 전화번호
			<div class="input-group" id='phoneNumber'>
				<select class="custom-select custom-select" name='phoneHead'>
					<option value="010" selected>010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select> <input type="text" class="form-control" name='phoneBody'> <input
					type="text" class="form-control" name='phoneTail'>
			</div>
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
	//가입버튼 클릭시 회원가입 입력양식form을 user/addUser로 포스트 전송
	$("#registrationButton").click(function() {
		var email = $("#email").val();
		$("#email").val();
		$("#registration").attr("action","/user/addUser").attr("method", "POST").submit();
	});
</script>



</html>