<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/javascript/bootstrap/css/bootstrap.min.css" />
	<style type="text/css">
	#boardSelect{
	width: 50%;
	}
	</style>
<meta charset="UTF-8">
<title>게시글 작성화면</title>
</head>
<body>
	<div class='container'>
			
		<p>
		XX 게시판 글쓰기
		<p>
		<form id='articleForm' action="/article/addArticle" method="post">
		<div class='input-group'>
			  <select class="custom-select col-3" name='targetBoardId' id="boardId">
    			<option selected>게시판을 선택</option>
  				</select>
			<div class='text-center input-group-append'>
			<input type="text" name='title' placeholder="제목을 입력해주세요">
			</div>
		</div>	
		<p>
		<div class='text-center'>
		<textarea rows="25" cols="100" name='content' placeholder="글 내용을 입력해주세요"></textarea>
		
		</div>
		</form>
		<div class='text-center'>
		<button type="button" class="btn btn-outline-primary" id ='registration'>등록</button>
		</div>
	</div>
	<script type="text/javascript"
		src="/javascript/jquery/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="/javascript/bootstrap/js/popper.min.js"></script>
	<script type="text/javascript"
		src="/javascript/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		type : "POST",
		url : "/article/rest/getBoardInfo",
		//data : jsonData,
		dataType : "text",
		beforeSend : function() {
		},
		error : function(request, status, error) {
			alert("에러발생함");
		},
		success : function(data) {
			data = JSON.parse(data);
			data.forEach(function(board){
				boardOptionSetter(board);
			});
		},
		complete : function() {
		}
	});
});

function boardOptionSetter(board){
	var optionTag = "<option value='";
	optionTag += board.id;
	optionTag += "'>";
	optionTag += board.name;
	optionTag += "</option>";
	$("#boardId").append(optionTag);
}

$("#registration").click(function(){
	$("#articleForm").attr('action',"/article/addArticle").attr("method","post").submit();	
});
</script>
</body>
</html>