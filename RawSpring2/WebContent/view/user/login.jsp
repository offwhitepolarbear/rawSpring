<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.badge {
	cursor: pointer;
}
</style>
<meta charset="UTF-8">
<title>게시판 로그인 페이지</title>
</head>
<body>
	<div class="container">

		<form id='loginForm' action='/user/login' method="post">
			<input type="text" class="form-control" id='email' name="email"
				placeholder="이메일을 입력해주세요">

			<p></p>

			<input type="password" class="form-control" id='password'
				name="password" placeholder="비밀번호 입력해주세요">
		</form>

		<p></p>

		<button type="button" class="btn btn-outline-primary btn-block"
			id='login'>로그인</button>

		<p></p>
		<a class="badge badge-outline-light" id='findEmail'>이메일찾기</a> 
		<a class="badge badge-outline-light" id='findPassword'>비밀번호찾기</a>
		<a class="badge badge-primary" id='addUser'>회원가입</a>
	</div>
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

	$("#findEmail").click(function() {
		location.href = "/user/findEmail";
	});
	$("#findPassword").click(function() {
		location.href = "/user/findPassword";
	});
	$("#addUser").click(function() {
		location.href = "/user/adduser";
	});

	function checkBeforeSubmit() {
		var result = false;
		if (checkEmailBeforeSubmit() && checkPasswordBeforeSubmit()) {
			result = true;
		}
		return result;
	}

	function checkEmailBeforeSubmit() {
		var result = false;
		if ($("#email").val() != "") {
			result = true;
		} else {
			alert("이메일을 입력해주세요");
		}
		return result;
	}

	function checkPasswordBeforeSubmit() {
		var result = false;
		if ($("#password").val() != "") {
			result = true;
		} else {
			alert("비밀번호를 입력해주세요")
		}
		return result;
	}

	$("input").keydown(function(key) {
		if (key.keyCode == 13) {
			$("#login").trigger("click");
		}
	});

	$("#login").click(function() {
		if (checkBeforeSubmit()) {

			var testData = new Object();
			testData.email = $("#email").val();
			testData.password = $("#password").val();

			var jsonData = JSON.stringify(testData);

			$.ajax({
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json"
				},
				type : "POST",
				url : "/user/rest/login",
				data : jsonData,
				dataType : "text",
				beforeSend : function() {
				},
				error : function(request, status, error) {
					alert("에러발생함");
				},
				success : function(data) {
					alert("success");
					alert(data);

				},
				complete : function() {
					alert("통신완료");
				}
			});
		}
	});
</script>
</html>