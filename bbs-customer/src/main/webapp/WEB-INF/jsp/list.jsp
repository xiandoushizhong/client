<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="common.jsp"></c:import>
</head>
<body>

	<c:import url="nav.jsp"></c:import>
	<div style="margin: 0 5%">
		<form action="delete.action" method="post">
			<table class="table table-hover">
				<tr>
					<th><input type="checkbox" /></th>
					<th>id</th>
					<th>title</th>
					<th>author</th>
					<th>createdate</th>
					<th>option</th>
				</tr>
				<c:forEach var="inv" items="${list }">
					<tr>
						<td><input name="ids" type="checkbox" value="${inv.id }" /></td>
						<td>${inv.id }</td>
						<td><a href="findById.action?id=${inv.id }">${inv.title }</a></td>
						<td>${inv.author }</td>
						<td>${inv.createdate }</td>
						<td><input
							onclick="javascript:location.href='update.action?id=${inv.id }'"
							value="修改" type="button" /></td>
					</tr>
				</c:forEach>
				<tr align="center">
					<td colspan="6"><input
						onclick="javascript:location.href='add.action'" value="添加"
						type="button" /> <input value="删除" type="submit" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>