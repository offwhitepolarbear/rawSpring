<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 찾기</title>
</head>
<body>
<div class="container">

찾으시는 이메일은 <p id="email"></p>입니다.
	<a class="badge badge-primary" id='login'>로그인 하러가기</a>
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

$("#login").click(function() {
	location.href = "/user/login";
});

if('${email}'==""){
	$(".container").text("이메일없어");
}
$("#email").text("${email}");
</script>

</html>