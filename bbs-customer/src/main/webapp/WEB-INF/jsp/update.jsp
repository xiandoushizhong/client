<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<c:import url="common.jsp"></c:import>
  </head>
  
  <body>
  <c:import url="nav.jsp"></c:import>
  <center>
    <div style="width: 500px;">
			<form action="updateSave.action" method="post">
				<input name="id" type="hidden" value="${invitation.id }"/>
				<div class="form-group">
					<label for="name">标题</label> <input type="text"
						class="form-control" id="title" name="title" placeholder="请输入名称" value="${invitation.title }">
				</div>
				<div class="form-group">
					<label for="name">概要</label> <input type="text"
						class="form-control" id="summary" name="summary"
						placeholder="请输入名称" value="${invitation.summary }">
				</div>
				<div class="form-group">
					<label for="name">作者</label> <input type="text"
						class="form-control" id="author" name="author" placeholder="请输入名称" value="${invitation.author }">
				</div>
				<input type="submit" value="提交" class="btn">
			</form>
		</div>
  </center>
  </body>
</html>
