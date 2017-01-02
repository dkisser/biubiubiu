<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<script src="./dist/sweetalert.min.js"></script> 
<link rel="stylesheet" type="text/css" href="./dist/sweetalert.css">
</head>
<body>
<script type="text/javascript">
	swal({   
		title: "欢迎",  
		text: "本页面将于2秒后跳转",  
		timer: 1500, 
		imageUrl : "./images/2.gif",
		imageSize : "300x300",
		showConfirmButton: true
		},
		function(){
			window.location.href="./home.do";
		}
		);
	
</script>
</body>
</html>