<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>新用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href=" ./css/login.css">
<script src="./dist/sweetalert.min.js"></script> 
<link rel="stylesheet" type="text/css" href="./dist/sweetalert.css">
<style type="text/css">
#aA{
color: #4DA6FF;
padding-left: 1000px;

}
#divA{
margin-top: 30px;
}
</style>
<script type="text/javascript">
function exsit(){
	swal({
		title: "偶多尅",
		text: "What are you 弄啥呢？",
		timer: 2000,
		imageUrl : "./images/4.jpg",
		imageSize : "300x300",
		showConfirmButton: true
		},
		function(){
			window.location.href="home/toHome.action";
		}
		
	);
}
</script>
</head>
<body
	style="background:url(./images/background2.png);background-size: 100%">
	<div id="divBody">
		<form action="./regist/doRegist.action" method="post">
			<table id="tabeForm" >
				<tr>
					<td class="tdText">用户名:</td>
					<td class="tdInput"><input name="name" class="inputClass" placeholder="请输入用户名"
					value="${registuser.name }"/></td>
					<td class="tdError"><label class="errorClass"></label></td>
				</tr>
				<tr>
					<td class="tdText">密码:</td>
					<td class="tdInput"><input name="password" type="password" class="inputClass" placeholder="请输入密码"
					value="${registuser.password}"/></td>
					<td class="tdError"><label class="errorClass"></label></td>
				</tr>
				<tr>
					<td class="tdText">邮箱:</td>
					<td class="tdInput"><input name="email" class="inputClass" placeholder="邮箱"
					value="${registuser.email}"/></td>
					<td class="tdError"><label class="errorClass"></label></td>
				</tr>
				<tr>
					<td class="tdText">电话:</td>
					<td class="tdInput"><input name="phone" class="inputClass" placeholder="电话"
					value="${registuser.phone}"/></td>
					<td class="tdError"><label class="errorClass"></label></td>
				</tr>
				<tr>
					<td></td>
					<td><input id="submit" value="确定" type="submit" /></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="divA"><a id="aA" onclick="exsit()">(⊙o⊙),我不想注册了</a></div>
</body>
</html>
