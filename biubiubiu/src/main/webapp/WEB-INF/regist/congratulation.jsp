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

<title>兄弟，你有有前途</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="./dist/sweetalert.css">
<script type="text/javascript" src="./js/jquery-1.5.1.js"></script>
<script type="text/javascript" src="./dist/sweetalert.min.js"></script>
<script type="text/javascript">
	function join() {
		swal({
			title : "MDZZ",
			text : "就你还想入党？先交党费吧",
			imageUrl : "./images/1.jpg",
			imageSize : "300x300"
		});

	}
	function unjoin() {
		swal({
			title : "ZZMD",
			text : "党你都不入？你还想不想活了？",
			imageUrl : "./images/2.jpg",
			imageSize : "300x300",
			timer: 2000, 
			showConfirmButton: true
		},
		function(){
			window.location.href="./home/toHome.action";			
		}
		);
	}
</script>
<script type="text/javascript">
	$(function() {
		$("tr:nth-child(odd)").addClass("red");
		$("tr:nth-child(even)").addClass("gray");

	});
</script>

<style type="text/css">
.red {
	color: #FF0000;
}

.gray {
	color: #4B4B4B;
}
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
<body
	style="background:url(./images/background3.jpg);background-size: 100%">
	<div id="divBody">
	<table id="bodymain">
		<tr>
			<td id="tdTitle"><h1>入党誓词</h1></td>
		</tr>
		<tr>
			<td class="tdClass">我志愿加入中国共产党,拥护党的纲领,遵守党的章程,履行党员义务,执行党</td>
		</tr>
		<tr>
			<td class="tdClass">的决定，严守党的纪律,保守党的秘密,对党忠诚,积极工作,为共产主义奋斗</td>
		</tr>
		<tr>
			<td class="tdClass">终身,随时准备为党和人民牺牲一切,永不叛党。党章规定,预备党员必须面</td>
		</tr>
		<tr>
			<td class="tdClass">向党旗进行入党宣誓。这是发展党员工作的必经程序,是我们党的优良传统.</td>
		</tr>
		<tr>
			<td class="tdClass">举行入党宣誓仪式,表现了入党的庄重性和严肃性.它是党对预备党员进行教</td>
		</tr>
		<tr>
			<td class="tdClass">育的一种形式,也是预备党员进行自我教育的好形式.预备党员通过人党宣誓,</td>
		</tr>
		<tr>
			<td class="tdClass">表示他们自愿承担共产党员的政治责任,表明他们对党的坚定信念和为党的</td>
		</tr>
		<tr>
			<td class="tdClass">事业奋斗终身的决心。通过入党宣誓,还可以使他们牢记党对自己的要性观</td>
		</tr>
		<tr>
			<td class="tdClass">念,终身牢记自己的誓言,提高对党的事业的责任感.</td>
		</tr>
		<tr>
			<td><p></p></td>
		</tr>
		<tr>
			<td><span></span></td>
		</tr>
		<tr>
			<td id="tdP"><h2>年轻人，现在你有两个选择</h2></td>
		</tr>
	</table>
	<div id="divBtn">
	<button onclick="join()">我想入党</button>
	<button id="rightBtn" onclick="unjoin()">我不入党</button>
	</div>
	</div>
</body>
</html>
