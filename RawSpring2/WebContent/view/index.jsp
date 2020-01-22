<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-2">
				사이드 바 부분임
				<div class="alert alert-info" role="alert">info-alert</div>
				<br />

			</div>
			<div class="col-10">
				<div id="p">한글 UTF8 초기 페이지임○馬</div>
				<div class="alert alert-dark" role="alert" id="darkAlert">A
					simple dark alert—check it out!</div>
				<div class="alert alert-primary" role="alert">A simple primary
					alert—check it out!</div>

				<img src="/resources/favicon/favicon.ico" width="100" height="100" />

				<div class="alert alert-primary" role="alert">A simple primary
					alert—check it out!</div>
			</div>
		</div>
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
	$("#p").click(function() {
		alert("111");
	});

	$(".alert").click(function() {
		alert("파랭이");
	});
	$("#darkAlert").click(function() {
		$(location).attr("href", "http://localhost:8080/test/test");
	});
</script>



</html>