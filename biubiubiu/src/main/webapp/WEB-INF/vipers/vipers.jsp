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

<title>VIP用户</title>

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

<body style="background:url(./images/background3.jpg);background-size: 100%">
	<div id="divBody">
		<table>
			<tr>
				<td><h2>VIP用户列表:</h2></td>
			</tr>
			<tr>
				<td class="tdClass">name:&nbsp;</td>
				<td class="tdClass">range:</td>
			</tr>
			<c:forEach items="${VipersList}" var="viper">
				<tr>
					<td class="tdClass">${viper.name}&nbsp;</td>
					<td class="tdClass">${viper.range}</td>
					<td><a href="./viper/doSearch.action?range=${viper.range}">查看当前等级的所有Vip信息</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
