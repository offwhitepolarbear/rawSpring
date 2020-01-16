<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test/test</title>
</head>
<body>
테스트테스트 경로의 페이지입니다.~~~

	<div class="alert alert-primary" role="alert" id="darkAlert">A simple primary
		alert—check it out!</div>

</body>

<link rel="stylesheet"
	href="/javascript/bootstrap/css/bootstrap.min.css" />

<script type="text/javascript"
	src="/javascript/jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="/javascript/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
		$("#darkAlert").click(function(){
			$(location).attr("href","http://localhost:8080/test/test");
		});

</script>
</html>