<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<hr>
	<a id='userInfo'>
		<div class="card">
			<div class="card-body">
				<div class='text-center' id='userInfoTarget'>
					<button type="button" class="btn btn-lg btn-outline-success"
						id='login'>로그인</button>
				</div>
			</div>
		</div>
	</a>
	<hr>
	<a id='boardList'> </a>
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
	$(function() {
		$.ajax({
			headers : {
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},
			type : "POST",
			url : "/user/rest/sessionUserCheck",
			dataType : "text",
			beforeSend : function() {
			},
			error : function(request, status, error) {
				alert("에러발생함");
			},
			success : function(data) {
				var user = JSON.parse(data);
				if (user != null) {
					$("#userInfoTarget").html(
							user.email + " : " + user.name + " : "
									+ user.nickname);
				}

			},
			complete : function() {
			}
		});
	});
	$(function() {

		var boardList;
		$.ajax({
			headers : {
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},
			type : "POST",
			url : "/board/rest/getBoardList",
			dataType : "text",
			beforeSend : function() {
			},
			error : function(request, status, error) {
				alert("에러발생함");
			},
			success : function(data) {
				boardList = JSON.parse(data);
				boardList.forEach(function(board, index, array) {
							$("#boardList").append(boardListTag(board.name, board.url));
						});
			},
			complete : function() {
			}
		});

	});
	function userTag(user) {

	}
	function boardListTag(name, url) {
		var tag  = "<div class='alert alert-primary board' role='alert' id='";
			tag += url;
			tag += "'>";
			tag += name;
			tag += "</div>";
		return tag;
	}
	$("#login").click(function() {
		location.href = "/user/login";
	})

	$(document).on("click", ".board", function() {
		location.href = "/board/" + $(this).attr("id") + "/";
	});
</script>

</html>