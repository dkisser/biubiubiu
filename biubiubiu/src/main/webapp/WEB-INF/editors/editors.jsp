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

<title>开发人员信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#divBody{
padding-left: 550px;
padding-top: 200px;
}	
#tdTitle{
text-align: center;
}
#tdP{
padding-left: 100px;
}
#divBtn{
padding-left: 100px;
}
#rightBtn{
margin-left: 100px;
}
.tdClass{
font-weight: 900;
font-style: oblique;
}
</style>

</head>

<body style="background:url(./images/background3.jpg);background-size: 100%">
	<div id="divBody">
<h3>溜哈网的开发人员们：</h3>
	<table>
		<c:forEach items="${editorsList}" var="Editor">
			<tr>
				<td class="tdClass">${Editor.editorid }&nbsp;</td>
				<td class="tdClass">${Editor.name }&nbsp;</td>
				<td class="tdClass">${Editor.sex }&nbsp;</td>
				<td class="tdClass">${Editor.age }&nbsp;</td>
				<td class="tdClass">${Editor.position }</td>
				<td><a id="aUser" href="<c:url value="/editor/toUsersList.action"/>">查看普通用户</a></td>
				<td><a id="aViper" href="<c:url value="/editor/toVipersList.action"/>">查看vip用户</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>
