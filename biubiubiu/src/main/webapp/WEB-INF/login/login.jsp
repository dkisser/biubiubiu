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

<title>登录界面</title>
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
</style>
<script type="text/javascript">
function exsit(){
	swal({
		title: "食屎啊你",
		text: "不登录你还想干嘛？",
		timer: 1000,
		imageUrl : "./images/3.jpg",
		imageSize : "300x300",
		showConfirmButton: true
		},
		function(){
			window.location.href="./home/toHome.action";
		}
		
	);
}
</script>
</head>

<body style="background:url(./images/background2.png);background-size: 100%">
	<div id="divBody">
	<form method="post" action="./login/doLogin.action">
	<input type="hidden" name="method" value="Loginaction"/>
		<table id="tabeForm" >
			<tr>
				<td class="tdText">用户名:</td>
				<td class="tdInput"><input type="text" id="name"
					name="name" class="inputClass" placeholder="请输入用户名"
					/></td>
				<td class="tdError"><label class="errorClass"
					name="usernameError"></label></td>

			</tr>
			<tr>
				<td class="tdText">密&nbsp;码:</td>
				<td class="tdInput"><input type="password" name="password"
					id="password" class="inputClass" placeholder ="请输入密码"
					/></td>
				<td class="tdError"><label class="errorClass"
					name="userpassError"></label></td>

			</tr>
<!-- 			<tr>
				<td class="tdText">验证码:</td>
				<td class="tdInput"><input type="text" name="verifyCode"
					id="verifyCode" class="inputClass" /></td>
				<td class="tdError"><label class="errorClass"
					name="userverifyCodeError">输入错误</label></td>

			</tr>
     		<tr>
				<td></td>
				<td><img id="imgVerifyCode" src="./VerifyCodeServlet"></td>
				<td class="tdError"><a id="imgVerifyCode" class="errorClass" href="javascript:_hyz()">换一张</a></td>

			</tr> -->

			<tr>
				<td></td>
				<td><input id="submit" type="submit" value="登录" /></td>
				<td class="tdError"><label></label></td>
			</tr>
		</table>
		</form>
	</div>
	<div><a id="aA"  onclick="exsit()">(⊙o⊙),我不想登录了</a></div>
</body>
</html>
