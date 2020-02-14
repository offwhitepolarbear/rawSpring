<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/javascript/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<style type="text/css">
/*
#replys{
width: 50%;
align: center;
}
*/
</style>
<title>게시글 열람화면</title>
</head>
<body>
<div class='container'>
	<div id='boardTitle'></div>
	
	<div class='card'>
		<h5 class='text-center' id='title'></h5>
		<div class='text-right' id='userNickname'></div>
	</div>
	
	<div class='card' id='content'>
		<br/><br/><br/><br/>
	</div>
	
	<p>
	
	<div id='replys'>
		
	</div>
	<p>
	<div class="input-group">
  <input type="text" class="form-control" placeholder="댓글을 입력해주세요" id='replyContent'>
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="button" id="replySubmit">등록</button>
  </div>
</div>
</div>
<script type="text/javascript"
	src="/javascript/jquery/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="/javascript/bootstrap/js/popper.min.js"></script>
<script type="text/javascript"
	src="/javascript/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
var articleId= window.location.pathname.substring(9);
$(function(){
	var articleInfo = new Object();
	articleInfo.id = articleId;
	
	var jsonData = JSON.stringify(articleInfo);
	
	$.ajax({
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		type : "POST",
		url : "/article/rest/getArticle",
		data : jsonData,
		dataType : "text",
		beforeSend : function() {
		},
		error : function(request, status, error) {
			alert("에러발생함");
		},
		success : function(data) {
			data = JSON.parse(data);
			$("#boardTitle").text(data.targetBoardId);
			$("#title").text(data.title);
			$("#userNickname").text(data.userNickname);
			$("#content").html("<pre>"+data.content+"</pre>");
		},
		complete : function() {
		}
	});
	
	$.ajax({
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		type : "POST",
		url : "/reply/rest/getReplys/"+articleId,
		//data : jsonData,
		dataType : "text",
		beforeSend : function() {
		},
		error : function(request, status, error) {
			alert("에러발생함");
		},
		success : function(data) {
			data = JSON.parse(data);
			
			data.forEach(replyParsing);
		},
		complete : function() {
		}
	});
	
});

function replyParsing(item, index){
	var replyTag = "<div class='card'><div class='card-body'><h5 class='card-title'>";
	replyTag += item.userNickname;
	replyTag += "</h5><h6 class='card-subtitle text-right'>";
	replyTag += new Date(item.registrationTime);
	replyTag += "</h6><p class='card-text'>";
	replyTag += item.content;
	replyTag += "</p></div></div>";
	$("#replys").append(replyTag);
	
};

$("#replySubmit").click(function(){
	
	var replyData = new Object();
	replyData.originId = articleId;
	replyData.content = $("#replyContent").val();
	
	var jsonReply = JSON.stringify(replyData);
	
	$.ajax({
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		type : "POST",
		url : "/reply/rest/addReply",
		data : jsonReply,
		dataType : "text",
		beforeSend : function() {
		},
		error : function(request, status, error) {
			alert("에러발생함");
		},
		success : function(data) {
		},
		complete : function() {
			location.href="/article/"+articleId;
		}
	});
	
});
</script>
</body>
</html>