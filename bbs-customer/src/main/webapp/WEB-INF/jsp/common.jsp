<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<c:set var="bp" value="<%=basePath%>" scope="session"></c:set>

<link href="${bp}/static/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="${bp}/static/js/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="${bp}/static/js/bootstrap.min.js"></script>
