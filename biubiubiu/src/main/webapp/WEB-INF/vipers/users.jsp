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

<title>普通用户</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
#divBody {
	padding-left: 550px;
	padding-top: 200px;
}

#tdTitle {
	text-align: center;
}

#tdP {
	padding-left: 100px;
}

#divBtn {
	padding-left: 100px;
}

#rightBtn {
	margin-left: 100px;
}

.tdClass {
	font-weight: 900;
	font-style: oblique;
}
</style>
</head>

<body
	style="background:url(./images/background3.jpg);background-size: 100%">
	<div id="divBody">
		<table>
			<tr>
				<td class="tdClass">当前等级的Vip用户列表:</td>
			</tr>
		</table>
		<table id="bodymain">
			<tr>
				<td class="tdClass">id:</td>
				<td class="tdClass">name:</td>
				<td class="tdClass">password:</td>
				<td class="tdClass">email:</td>
				<td class="tdClass">statis:</td>
				<td class="tdClass">phone:</td>
				<td class="tdClass">range:</td>
			</tr>
			<c:forEach items="${UsersList}" var="user">
				<tr>
					<td class="tdClass">${user.id}</td>
					<td class="tdClass">${user.name}</td>
					<td class="tdClass">${user.password}</td>
					<td class="tdClass">${user.email}</td>
					<td class="tdClass">${user.status}</td>
					<td class="tdClass">${user.phone}</td>
					<td class="tdClass">${user.range}</td>
					<td><a
						href="<c:url value='/users/doDelete.action'/>?id=${user.id}">删除</a></td>
					<td><a
						href="<c:url value='/users/toUpdate.action'/>?id=${user.id}">编辑</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
