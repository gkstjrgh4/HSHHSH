<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>친구추가 폼 입니다.</h1>
<div>
	<form action="insert.jsp" method="post">
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id="name"/>
		</div>
		<div>
			<label for="phone">전화번호</label>
			<input type="text" name="phone" id="phone"/>
		</div>
		<button type="submit">추가하기</button>
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>