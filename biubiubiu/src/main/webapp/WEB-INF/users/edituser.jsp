<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户信息修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form method="post" action="<c:url value='/users/doUpdate.action'/>" method="post">
		<table>
			<tr>
				<td><input name="id" type="hidden" value="${user.id}" /></td>
			</tr>
			<tr>
				<td>name:</td>
				<td><input name="name" value="${user.name}"/></td>
			</tr>
			<tr>
				<td>password</td>
				<td><input name="password" value="${user.password}"/></td>
			</tr>
			<tr>
				<td>email</td>
				<td><input name="email" value="${user.email}"/></td>
			</tr>
			<tr>
				<td>phone</td>
				<td><input name="phone" value="${user.phone}"/></td>
			</tr>
			<tr>
				<td><button>确认</button></td>
			</tr>
		</table>
	</form>
</body>
</html>
