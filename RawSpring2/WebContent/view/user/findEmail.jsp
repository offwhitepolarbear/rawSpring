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
		<form id='findEmailForm'>
			<input type="text" class="form-control" name='name'
				placeholder="찾으실 회원의 이름">

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
		<button type="button" class="btn btn-outline-primary btn-block"
			id='findEmail'>이메일 찾기</button>

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
		var phoneHead = $("[name='phoneBody']").val();
		//alert(phoneNumberValidationChecker(phoneHead));
		$("#findEmailForm").attr("action","/user/findEmail").attr("method","POST").submit();
	});
	
	function phoneNumberValidationChecker(numbers){
		var result = false;
		var onlyNumber = /[^0-9]/g;
		
		if(numbers.length==3){
			result = true;
		}
		return result;
	}
</script>

</html>