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
	<a id='userInfo'>
	</a>
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
function testt(index){
	location.href="/board/"+index+"/";
};
$(function(){
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
			$("#userInfo").append(user.email+" : "+user.name+" : "+user.nickname);
		},
		complete : function() {
		}
	});	
});
$(function(){
	
	var boardList ;
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
			boardList.forEach(function(item,index,array){
				$("a").append("<div class='alert alert-primary' role='alert' id='"+item.name+"' onclick='testt("+item.index+");'>"+item.name+"</div>");
			});
		},
		complete : function() {
		}
	});	
	
});
</script>

</html>