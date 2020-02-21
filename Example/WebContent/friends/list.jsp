<%@page import="frienddao.FriendDao"%>
<%@page import="frienddto.FriendDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<h1>친구 목록입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>친구 이름</th>
				<th>친구 전화번호</th>
			</tr>
		</thead>
		<%List<FriendDto> list=FriendDao.getInstance().getList(); %>
		<tbody>
			<%for(FriendDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getPhone() %></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</div>
</body>
</html>