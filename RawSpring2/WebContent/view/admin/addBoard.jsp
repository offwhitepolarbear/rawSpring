<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판추가화면</title>
</head>
<body>
<div class="container">
<form id='boardInfomations'>
<div class='input-group'>
<input type='text' class='form-control' name='boardName' value ='게시판 명'readOnly>
<input type='text' class='form-control' name='boardDescription' value ='게시판 설명' readOnly>
<input type='text' class='form-control' name='url' value ='게시판 url' readOnly>
</div>
<hr>
</form>
<hr>
<div class='text-center'>
<button type="button" class="btn btn-outline-success btn-lg" style='max-width: 50%;align-content:center;' id='addBoard'>게시판 추가</button>
</div>
<hr>
<div class='text-right'>
<button type="button" class="btn btn-outline-primary" id = 'submit'>변경사항적용</button>
<button type="button" class="btn btn-outline-danger" id='reset'>변경사항 취소</button>
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
var boardCount = $(".input-group").length;
var index = 0;
$.ajax({
	headers : {
		"Accept" : "application/json",
		"Content-Type" : "application/json"
	},
	type : "POST",
	url : "/board/rest/getBoardListForModify",
	dataType : "text",
	beforeSend : function() {
	},
	error : function(request, status, error) {
		alert("기존 게시판 목록 로딩중 에러발생함");
	},
	success : function(data) {
		boardList=JSON.parse(data);
		
		boardList.forEach(function(board){
			$("#boardInfomations").append(boardInformation(board.name,board.description, board.url ));
		});

		boardCount = $(".input-group").length;
	},
	complete : function() {
	}
});


function boardAppendTagMaker(){
	var tag ="<div class='input-group readyToAdd'>";
	tag += "<input type='text' class='form-control w-10 name' name='name' placeholder='게시판 명을 입력해주세요'>";
	tag += "<input type='text' class='form-control w-10 description' name='description' placeholder='게시판 설명을 입력해주세요'>";
	tag += "<input type='text' class='form-control w-10 url' name='url' placeholder='게시판에 사용할 url을 입력해주세요'>";
	tag += "<button type='button' class='btn btn-outline-warning boardRemover'>X</button></div>";
	return tag;
}
function boardInformation(name, description, url){
	return "<div class='input-group'><input type='text' class='form-control w-30' name='boardName' value ='"+name+"'readOnly><input type='text' class='form-control w-30' name='boardDescription' value ='"+description+"' readOnly><input type='text' class='form-control w-30' name='url' value ='"+url+"' readOnly></div>";
}

$("#addBoard").click(function(){
	$("#boardInfomations").append(boardAppendTagMaker());
});

$(document).on("click",".boardRemover",function(){
	$(this).parent().remove();
});

$("#submit").click(function(){
	var addBoardSize = $(".readyToAdd").length;
	var addingBoardList = new Array();
	for (var i=0;i<addBoardSize;i++){
		var board = new Object();
		board.name =  $(".name:eq("+i+")").val();
		board.description =  $(".description:eq("+i+")").val();
		board.url =  $(".url:eq("+i+")").val();
		board.index = boardCount+i+1;
		addingBoardList.push(board);
	}
	var jsonBoardList = JSON.stringify(addingBoardList); 
	$.ajax({
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		type : "POST",
		url : "/board/rest/addBoard",
		data : jsonBoardList,
		dataType : "text",
		beforeSend : function() {
		},
		error : function(request, status, error) {
			alert("기존 게시판 목록 로딩중 에러발생함");
		},
		success : function(data) {
			location.href=data;
		},
		complete : function() {
		}
	});
	
});
$("#reset").click(function(){
	location.href="/board/addBoard";
});
	
</script>

</html>