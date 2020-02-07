//////기존에 검색했던 조건을 서버에서 다시 받아와서 현재페이지에 다시 미리 적용해두는 부분

//검색조건 선택 반영
$("#searchCondition option").each(function(){
	if($(this).val()==searchCon){
		$(this).prop('selected','selected');
	}
});
//검색어 반영
$("#searchKeyword").val(searchKey);
//페이지 갯수 적용 반영
$("#contentsPerPage option").each(function(){
	if($(this).val()==contentsPerPage){
		$(this).prop('selected','selected');
	}
})
//////기존에 검색했던 조건을 서버에서 다시 받아와서 현재페이지에 다시 미리 적용해두는 부분

function submitSearchForm(){
	$("#userSearchForm").attr('action','/user/getUserList').attr('method','post').submit();
}

// 검색을 누를경우 검색조건을 전송하는 기능
$("#find").click(function(){
	submitSearchForm();
});

//검색어 입력후 엔터시 겟 방식으로 전송되는데 post로 전송하게
$("#searchKeyword").keypress(function(){
	if(event.keyCode == 13){
		submitSearchForm();
	}
});

// 페이지당 표시 갯수 변경시 바로 적용되게
$("#contentsPerPage").change(function(){
	submitSearchForm();
});

//페이지 이동 기능
$(document).on("click",".page-item",function(){
	if($(this).val()>0){
		$('#currentPage').val($(this).val());
		submitSearchForm();
	}
});
