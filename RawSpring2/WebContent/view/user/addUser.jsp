<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<div class='row'>
	<div class='col-2'>
	<c:import url="/view/toolbar/sidebar.jsp" >
	</c:import>
	</div>
	<div class='col-10'>
		<p>
		<form id='registration' action='/user/addUser' method="post">
			이메일 <input type="text" class="form-control" name='email'>
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
		</p>
		<button type="button" class="btn btn-outline-primary btn-lg btn-block"
			id='registrationButton'>가입</button>
	</div>
	
	</div></div>
</body>

<link rel="stylesheet"
	href="/javascript/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript"
	src="/javascript/jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="/javascript/bootstrap/js/popper.min.js"></script>
<script type="text/javascript"
	src="/javascript/bootstrap/js/bootstrap.min.js"></script>



<script type="text/javascript">
	$("#registrationButton").click(function() {
		$("#registration").attr("action","/user/addUser").attr("method", "POST").submit();
	});
</script>



</html>