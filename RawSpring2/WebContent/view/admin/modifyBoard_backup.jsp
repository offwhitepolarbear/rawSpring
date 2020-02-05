<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판수정화면</title>
</head>
<body>
<div class="container">
<div class='row'>
<div class="card col-sm">
게시판명
</div>
<div class="card col-sm">
게시판설명
</div>
<div class="card col-sm">
url
</div>
</div>
<hr>
<form id='boardInfomations'>
</form>
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
		var boardList = JSON.parse(data);
		var index = 0;
		boardList.forEach(function(board){
			$("#boardInfomations").append(boardInformation(index, board.name, board.description, board.url ));
		});
	}
});

function boardInformation(index, name, description, url){
	var tag = "<div id='";
	tag += index;
	tag += "' ";
	tag += "ondragenter='dragEnter(event)' ondragover='dragOver(event)' ondrop='drop(event)'>";
	tag += "<div class='input-group movefinder' id='";
	tag += url;
	tag += "' draggable='true' ondragstart='dragStarter(event)' >";
	tag += "<input type='text' class='form-control' name='boardName' value ='";
	tag += name;
	tag += "'>";
	tag += "<input type='text' class='form-control' name='boardDescription' value ='";
	tag += description;
	tag += "' >";
	tag += "<input type='text' class='form-control' name='url' value ='";
	tag += url;
	tag += "' readonly>";
	tag += "</div></div><hr>";
	return tag
}

function dragStarter(event){

	event.dataTransfer.setData("txt", event.target.id);
	event.dataTransfer.setData("index", $(event.target).parent().attr('id'));
	alert($(".movefinder").index($(event.target).parent()));
	//event.dataTransfer.effectAllowed = "move";
}

function dragEnter(event){
	event.preventDefault();
}


function dragOver(event){
	event.preventDefault();
	 //event.dataTransfer.dropEffect = "move"
}

function drop(event){
	event.preventDefault();
	
	var data = event.dataTransfer.getData("txt");
	var returnIndex = event.dataTransfer.getData("index");
	var getTag = document.getElementById(data); 
	var save = $(event.currentTarget).html();
	$(event.currentTarget).empty();
	$(event.currentTarget).html(getTag);
	$("'#"+returnIndex+"'").html(save);
	//alert(save);	
//    event.currentTarget.append(getTag);
  // // event.currentTarget.append(save);
   // alert(save);
	 // event.stopPropagation();
}

$("#reset").click(function(){
	location.href="/board/modifyBoard";
});
	
</script>

</html>