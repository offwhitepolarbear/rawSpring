<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/javascript/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<div class="container">
		<form id='userSearchForm'>

			<div class="input-group">
				<input type="hidden" name='currentPage' id='currentPage' value="1">
				<select class="custom-select" name="searchCondition" id='searchCondition'>
					<option value="name" selected>이름</option>
					<option value='email'>이메일</option>
					<option value="nickname">닉네임</option>
				</select> 
				<input type="text" class="form-control" 
				name='searchKeyword' id='searchKeyword' placeholder="검색어를 입력하세요">
				<button type="button" class="btn btn-outline-dark" id='find'>검색</button>
			</div>
			페이지당 표시 갯수<select class="custom-select" name="contentsPerPage"
				id='contentsPerPage'>
				<option value='1' selected>1</option>
				<option value="10">10</option>
				<option value="20">20</option>
				<option value='30'>30</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
		</form>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">이름</th>
					<th scope="col">닉네임</th>
					<th scope="col">메일</th>
					<th scope="col">핸드폰</th>
					<th scope="col">가입일</th>
					<th scope="col">유저역할</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="user" items="${userList}">
					<tr>
						<td>${user.name}</td>
						<td>${user.nickname}</td>
						<td>${user.email}</td>
						<td>0${user.phoneHead} - ${user.phoneBody} -
							${user.phoneTail}</td>
						<td><fmt:formatDate value="${user.registerTime}"
								pattern="yyyy.MM.dd HH:mm:ss" /></td>
						<td>${user.userRole}</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	
	<nav>
  <ul class="pagination justify-content-center" id='pagingNavigator'>
  </ul>
</nav>

	<!-- script source -->
	<script type="text/javascript"
		src="/javascript/jquery/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="/javascript/bootstrap/js/popper.min.js"></script>
	<script type="text/javascript"
		src="/javascript/bootstrap/js/bootstrap.min.js"></script>

	<!-- page function script -->
	<script type="text/javascript">
		//서버에서 받아온 서치중 필요한 정보만 미리 선언
		var searchCon = '${search.searchCondition}';
		var searchKey = '${search.searchKeyword}';
		var contentsPerPage = '${search.contentsPerPage}';
		
		var recentPage = ${page.recentPage};
		var lastPage = ${page.lastPage};
		var totalSize = ${page.totalSize};
		var pageNavigationSize = ${page.pageNavigationSize};
		var firstPageIndex = ${page.firstPageIndex};
		var lastPageIndex = ${page.lastPageIndex};
		if(lastPageIndex>lastPage){
			lastPageIndex = lastPage;
		}
		
		//개별 페이지 태그 다른 펑션 참조해서 페이지 태그 세트를 만드는 부분
		function pageSetMaker(firstPage,lastPage,recentPage,totalPage){
			var pageSet = '';
			var pageBeforeFirst = 0;
			var pageAfterLast = 0;
			if(firstPage>1){
				pageBeforeFirst = firstPage-1;
			}
			
			pageSet += specialPageTagMaker(pageBeforeFirst,'<');
			
			for(var i=firstPage;i<=lastPage;i++){
				if(i!=recentPage){
					var pageTag = eachPageTagMaker(i,null);
				}
				else{
					var pageTag = eachPageTagMaker(i, 'active');
				}
				pageSet += pageTag;
			}
			
			if(lastPage<totalPage){
				pageAfterLast = lastPage+1;
			}
			pageSet += specialPageTagMaker(pageAfterLast,'>');
			
			$("#pagingNavigator").append(pageSet);
		}	
						
		//일반 페이지 태그 만드는 부분
		function eachPageTagMaker(index, isActive){
			var pageTag = "<li class='page-item ";
			if(isActive!=null){
				pageTag+= isActive;
			}
			pageTag += "'value='";
			pageTag += index;
			pageTag += "'><a class='page-link' href='#'>";
			pageTag += index;
			pageTag += "</a></li>";
			return pageTag
		}
		
		//앞으로 뒤로 페이지 만드는 기능
		function specialPageTagMaker(index, direction){
			var pageTag = "<li class='page-item ";
			if(index==0){
				pageTag += "disabled";
			}
			pageTag += "'value='";
			pageTag += index;
			pageTag += "'><a class='page-link' href='#'>";
			pageTag += direction;
			pageTag += "</a></li>";
			return pageTag
		}
		
		$(function(){
			pageSetMaker(firstPageIndex,lastPageIndex,recentPage,lastPage);
		});
	</script>
	<script type="text/javascript"
		src="/javascript/app/user/getUserList.js"></script>
</body>

</html>