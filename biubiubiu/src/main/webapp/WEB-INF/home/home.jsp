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

<title>溜哈网</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="./css/demo.css">
<link rel="stylesheet" type="text/css" href="./css/style1.css">
<link rel="stylesheet" type="text/css" href="./dist/sweetalert.css">
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/jquery-tag.js"></script>
<script src="./dist/sweetalert.min.js"></script> 
<script type="text/javascript">
$(function () {
	homeaction = {
		douyu: function () {
			window.open("http://www.douyu.com");
		},
		panda: function () {
			window.open("http://www.panda.tv");
		},
		quanmin: function () {
			window.open("http://www.quanmin.tv");
		},
		zhanqi: function () {
			window.open("http://www.zhanqi.tv");
		},
		baidu: function () {
			//打开新窗口
			var wd=$("#inputText").val();
			if (wd =="" ) {
				swal({   
					title: "MDZZ",  
					text: "什么都没有,你也要搜索?",  
					imageUrl : "./images/22.gif",
					imageSize : "300x300",
					showConfirmButton: true
					});
				return false;
			}
			window.open("http://www.baidu.com/s?wd="+wd);
			//不打开新窗口的前提下
//		 	window.location.href="http://www.baidu.com/s?wd="+a;
		},
		shezhizhuye: function () {
			swal({   
				title: "MDZZ",  
				text: "设置主页也要我教你?",  
				imageUrl : "./images/1.jpg",
				imageSize : "300x300",
				showConfirmButton: true
				});  
		},
		info: function () {
			swal({   
				title: "6ha 简介",  
				text: "只有三个字能概括--强,无敌！",  
				imageUrl : "./images/5.gif",
				imageSize : "300x300",
				showConfirmButton: true
				});  
		},
		read: function () {
			swal({   
				title: "6ha使用说明",  
				text: "本网站拒绝未成年人观看,因违反规定而擅自进入的,没小JJ",  
				imageUrl : "./images/2.jpg",
				imageSize : "300x300",
				showConfirmButton: true
				});  
		},
		yijianfankui: function () {
			swal({   
				title: "孽畜",  
				text: "你TM不想活了吧,还有意见?",  
				imageUrl : "./images/3.jpg",
				imageSize : "300x300",
				showConfirmButton: true
				});
		},
		vip: function () {
			swal({   
				title: "充值VIP",  
				text: "充值后的你,将更加强大!",  
				imageUrl : "./images/3.jpg",
				imageSize : "300x300",
				showConfirmButton: true
				});
		},
		
	};
	
	$("#right").activiTag({});
	
	$(document).bind("keypress",function(event){  
	    if(event.keyCode == "13") {
	    	$("#searchBtn").click();  
	    }
	});  
});
 	
</script>
<style type="text/css">
	#center {width:50%;left:20px;float: right;}
	#right{top: 20%;width:25%;height:60%;float: right;}
	#divinput {float: left;}
	#divBtn {float: left;}
	#div6hainfo {position: fixed;bottom: 50px;left: 40%;} 
	#divlogo {width: auto;height: auto;}
	#left {position: fixed;width:25%;float: left;top:160px;}
	.litext {font-family: 微软雅黑;}
	.afont {font-size: 20;}
	#lititle1 {font-size: 30;font-weight: 400;}
	#lititle2 {font-size: 30;font-weight: 400;}
	#divlogo {position: fixed;top:20px;left:0px;}
	.liClass {padding-top: 20;}
	#centerPhoto {padding-top: 50px;}
</style> 
</head>

<body>
	<div id="main">
	<div id="left">
	<nav style="padding-left:60px;">
	    <h1 id="lititle1" class="litext">游戏资源</h1>
	  <ul>
	    <li class="liClass"><a href="http://lol.qq.com/" class="afont">英雄联盟之撸狗联盟</a></li>
	    <li class="liClass"><a href="http://www.dota2.com.cn/main.htm" class="afont">Dota之剁他二</a></li>
	    <li class="liClass"><a href="http://dnf.qq.com/main.shtml" class="afont">地下城与勇士之掉线城与屌丝</a></li>
	    <li class="liClass"><a href="http://hs.blizzard.cn/home" class="afont">炉石传说之露丝传说</a></li>
	    </ul>
	    <h1 id="lititle2" class="litext">学习资源</h1>
	    <ul>
	    <li class="liClass"><a href="http://www.baidu.com/s?wd=苍井空" class="afont">wuli电竞小苍之苍井空</a></li>
	    <li class="liClass"><a href="http://www.baidu.com/s?wd=松岛爱" class="afont">wuli鲨鱼辣椒之松岛爱</a></li>
	    <li class="liClass"><a href="http://www.baidu.com/s?wd=小哲玛利亚 " class="afont">wuli卡布达之小哲玛利亚</a></li>
	    <li class="liClass"><a href="http://www.baidu.com/s?wd=波多野结衣" class="afont">wuli金龟次郎之波多野结衣</a></li>
	    <li class="liClass"><a href="http://www.baidu.com/s?wd=武藤男" class="afont">wuli车轮滚滚之武藤男</a></li>
	  </ul>
	  </nav>
	</div>
	<div id="right"></div>
	<div id="center" class="container">
	  <header>
	    <h1>溜 哈 网</h1>
	    <h2>Welcome to 6ha !</h2>
	    <nav class="codrops-demos">
	      <a onclick="homeaction.douyu()" class="current">斗鱼TV</a>
	      <a onclick="homeaction.panda()">熊猫TV</a>
	      <a onclick="homeaction.zhanqi()">战旗TV</a>
	      <a onclick="homeaction.quanmin()">全民TV</a>
	    </nav>
	  </header>
	  <section>
	  	<div id="container_buttons" style="line-height: 44px;">
		  <div id="divinput"><input id="inputText" style="width:350px;height:50px;left:20px;padding-left: 10px;font-size: 20;font-style:oblique;" placeholder="请在此输入您想要搜索的内容" /></div>
	  	  <div id="divBtn"><a style="left:30px;" id="searchBtn" class="a_demo_one" onclick="homeaction.baidu()">溜一哈</a></div>
	  	</div>
	  </section>
	  <div id="divlogo">
	  <!-- 插入6ha的logo -->
	  <img alt="6ha.logo" src="./images/6halogo.png">
	  </div>
<!-- 	  <div id="centerPhoto">
	    <img alt="6ha" src="./images/image.gif"/>背景要换成灰色de
	  </div> -->
	  <div id="div6hainfo">
	  <footer>
	    <h2><a onclick="homeaction.shezhizhuye()" href="javascript:void(0)">把6ha设为主页</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a onclick="homeaction.info()" href="javascript:void(0)" >关于溜哈About  6ha</a><br>
			©2016 6ha <a href="javascript:void(0)" onclick="homeaction.read()">使用溜哈前必读</a>&nbsp&nbsp<a onclick="homeaction.yijianfankui()" href="javascript:void(0)">意见反馈</a> 京ICP证10086号<br><i class=""></i>
			京公网安备10008200820号 <a onclick="homeaction.vip()" href="javascript:void(0)">充值VIP</a></h2>
	  </footer>
	  </div>
	</div>
	</div>
</body>
</html>
