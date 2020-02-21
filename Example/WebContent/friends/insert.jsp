<%@page import="frienddto.FriendDto"%>
<%@page import="frienddao.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	
	FriendDto dto=new FriendDto();
	dto.setName(name);
	dto.setPhone(phone);
	boolean isSuccess=FriendDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<%if(isSuccess){ %>
		<script>
			alert("친구 추가 완료!");
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("친구 추가 실패");
			location.href="insertform.jsp";
		</script>
	<%} %>
</div>
</body>
</html>