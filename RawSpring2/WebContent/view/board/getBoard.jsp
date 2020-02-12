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
			<div>게시판제목</div>
			<div>게시판 설명 1줄</div>
			<div>게시판 설명 2줄</div>
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
	
	var articleTag = "<tr>";
	articleTag += "<td>";
	articleTag += index;
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
	articleTag += new Date(item.registrationTime);
	articleTag += "</td>";
	articleTag += "</tr>";
						
	$(".articleInfo").append(articleTag);
   
}
$(document).on("click", ".title", function() {
	location.href= "/article/"+$(this).attr('id');
})
</script>
</body>
</html>