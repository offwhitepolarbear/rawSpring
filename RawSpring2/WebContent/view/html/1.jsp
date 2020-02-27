<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<th>테이블</th>
		<th>만들기</th>
		<tr>
			<td>첫번쨰 칸</td>
			<td>두번쨰 칸</td>
		</tr>

		<tr>
			<td>first</td>
			<td>second</td>
		</tr>
	</table>
	<hr>
	
	<hr>
	<table border="1" style='margin: 0 auto;'>

		<tr>
			<td colspan='3'>회원가입</td>
		</tr>

		<tr>
			<td>이메일</td>
			<td><input type='text'></td>
			<td>
				<button type='button' onclick="openNewWindow();">버튼입니다</button>
			</td>
		</tr>

		<tr>
			<td rowspan="2">비밀번호</td>
			<td><input type='text' placeholder="기본입력칸"></td>
			<td rowspan="2"><button type='button'>비밀번호확인버튼</button></td>
		</tr>

		<tr>
			<td><input type='text' placeholder="반복입력칸"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td colspan="2">
			<select name="phoneHead">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
			</select>
			<input type='text' placeholder="전화번호를 입력해주세요" maxlength="8" style='width: 400px'>
			</td>
		</tr>
		<tr>
			<td>성별</td>
			<td colspan='2'><input type="radio" name='gender'>남자 <input
				type="radio" name='gender'>여자</td>
		</tr>

		<tr>
			<td>취미</td>
			<td colspan="2"><input type="checkbox" checked>배구 독서
				체크되서 나옴 <input type="checkbox">야구 <input type="checkbox">농구
				<input type="checkbox" checked>베구 <input type="checkbox">축구
				<input type="checkbox" checked>독서 <input type="checkbox">컴퓨터
			</td>
		</tr>

		<tr>
			<td>비고</td>
			<td colspan='2'><textarea style='resize: none; width: 98%;' placeholder="길게 입력가능" maxlength="500"></textarea></td>
		</tr>

	</table>
	<script type="text/javascript">
	function openNewWindow (){
		var win = window.open("/test/2", "PopupWin", "width=400,height=400");
		//win.document.write("<p>새창에 표시될 내용 입니다.</p><hr><div>창크기는 400 400 입니다</div>");
	}
	
	</script>
</body>
</html>