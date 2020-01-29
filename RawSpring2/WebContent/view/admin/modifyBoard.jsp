<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정 화면</title>
</head>
<body>
<div class="container">
<form id='boardInfomations'>
<div class='input-group'>
<input type="text" class="form-control" name='boardName'>12345
<input type="text" class="form-control" name='boardDescription'>
<button type="button" class="btn btn-outline-warning" onclick="testing(1)">Warning</button>
</div>
</form>
<button type="button" class="btn btn-outline-primary btn-lg btn-block" style='max-width: 50%' id='addBoard'>Block level button</button>

<button type="button" class="btn btn-outline-primary" id = 'tester'>프라머리</button>
<button type="button" class="btn btn-outline-success">Success</button>

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

var boardCount = $(".btn-outline-warning").length;

function boardAppendTagMaker(index){
	return "<div class='input-group'><input type='text' class='form-control' name='boardName'>54321<input type='text' class='form-control' name='boardDescription'><button type='button' class='btn btn-outline-warning' onclick='testing("+index+")'>Warning</button></div>";
}

function testing(input){
	alert("호출됨"+input);
};

$("#addBoard").click(function(){
	boardCount=$(".btn-outline-warning").length;
	$("#boardInfomations").append(boardAppendTagMaker(boardCount));
});

$("#tester").click(function(){
	var boardCounting = $(".btn-outline-warning").length;
	var boardList = new Array();
	for(var i=0; i<boardCounting; i++){
		var board = new Object();
		board.name = $("[name='boardName']:eq("+i+")").val();
		board.description = $("[name='boardDescription']:eq("+i+")").val();
		board.index = i;
		boardList.push(board);
	}
	jsonData = JSON.stringify(boardList);

	
	$.ajax({
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		type : "POST",
		url : "/board/rest/getBoardInformations",
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
});
	
</script>

</html>