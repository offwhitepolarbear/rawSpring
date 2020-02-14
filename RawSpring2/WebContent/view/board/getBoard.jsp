<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/javascript/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<style type="text/css">
.title{
cursor: pointer;
}
</style>
<title>게시판화면</title>
</head>
<body>
<div class='container'>
	
	<div class="row">
	
		<div class='col-2'>
			<c:import url="/view/toolbar/sidebar.jsp">
			</c:import>
		</div>
			
		<div class='col-10'>
			<hr>
			<div class='card'>
			<div class='boardName'>게시판제목</div>
			<div class='boardDescription'>게시판 설명 1줄</div>
			</div>
			<br/>
			<div class='card'>
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">제목</th>
			      <th scope="col">좋아요</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성시간</th>
			    </tr>
			  </thead>
			  <tbody class='articleInfo'>
			   
			  </tbody>
			</table>
			</div>
			<hr>
			<button type="button" class="btn btn-outline-success" id='writeArticle'>글쓰기</button>
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
var uri = window.location.pathname.substring(7);
$(function(){
	
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
						alert("로그인 여부 확인중 에러 발생함");
					},
					success : function(data) {
						if(data ==''){
							$("#writeArticle").remove();
						}
						
					},
					complete : function() {
					}
				});
	});
	
	
	var articleSearch = new Object();
	articleSearch.boardURL = uri;
	
	var jsonSearch = JSON.stringify(articleSearch);
	
	$.ajax({
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		type : "POST",
		url : "/article/rest/getArticleList",
		data : jsonSearch,
		dataType : "text",
		beforeSend : function() {
		},
		error : function(request, status, error) {
			alert("에러발생함");
		},
		success : function(data) {
			data = JSON.parse(data);
			
			data.articleList.forEach(articleParsing);
		},
		complete : function() {
		}
	});
});

function articleParsing(item, index){
	$(".boardName").text(item.boardName);
	var articleTag = "<tr>";
	articleTag += "<td>";
	articleTag += item.id;
	articleTag += "</td>"; 
	articleTag += "<td class='title' id='"+item.id+"'>";
	articleTag += item.title;
	articleTag += "</td>";
	articleTag += "<td>";
	articleTag += item.like;
	articleTag += "</td>";
	articleTag += "<td>";
	articleTag += item.userNickname;
	articleTag += "</td>";
	articleTag += "<td>";
	articleTag += dateFormatChanger(item.registrationTime);
	articleTag += "</td>";
	articleTag += "</tr>";
						
	$(".articleInfo").append(articleTag);
   
}


function dateFormatChanger(dbDate){
	
	var rawDate = new Date(dbDate);
	
	var returnDate = rawDate.getFullYear()+"-";
	returnDate += (rawDate.getMonth()+1) +"-" ;
	returnDate += rawDate.getDate()+" ";
	returnDate += rawDate.getHours()+":";
	returnDate += rawDate.getMinutes()+":";
	returnDate += rawDate.getSeconds();
	
	return returnDate;
}


$(document).on("click", ".title", function() {
	location.href= "/article/"+$(this).attr('id');
});
$("#writeArticle").click(function(){
	location.href= "/article/addArticleView/";
});

</script>
</body>
</html>