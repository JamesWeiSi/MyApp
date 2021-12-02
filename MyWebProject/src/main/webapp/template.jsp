<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="css/template.css">
	<title>绿色新西兰</title>
</head>
<body>

	<!-----------------------------------Header---------------------------------->
	<div>
	<ul class="header">
		<li>欢迎来到 摩娜国际</li>

		<li class="header2"><a href="register.jsp">注册</a></li>
		<li class="header2"> | </li>
		<li class="header2"><a href="login.jsp">登录</a></li>
	</ul>
	</div>

	<!--------------------------Company Icon & Search Bar------------------------>
	
	<div class="searchWrap">
		<div class="search logo">
			<img alt="" src="img/moona logo.jpg">
		</div>
		<div class="search bar">
			<div class="barwrap">
				<form action="" method="post">
					<img src="img/searchIcon.PNG" alt="" id="iconImg">
					<input type="text" name="srchProducts" placeholder="请输入产品名称" id="srchtext">
					<input type="submit" value="搜索" id="srchsubmit">
				</form>
			</div>
		</div>
		<div class="search Cart">
			Shopping Cart
		</div>
	</div>
	

	<!---------------------------------Navigator-------------------------------->
	<div class="navBarContainer">		
		<ul class="nav">
			<li class="allProducts">所有产品分类</li>
			<li><a href="">首页</a></li>
			<li><a href="">特价专区</a></li>
			<li><a href="">纽澳当季水果</a></li>
			<li><a href="">联系客服</a></li>
			<li><a href="">会员信息</a></li>
		</ul>
	</div>
	

	<!------------------------------------------Product catalog---------------------------------------->
	<div class="productsArea">
		<div class="productsCatalog">		
			<ul class="productsNav">
				<li><a href="">奶粉母婴</a></li>
				<li><a href="">美妆个护</a></li>
				<li><a href="">营养保健</a></li>
				<li><a href="">服饰玩具</a></li>
				<li><a href="">美味零食</a></li>
				<li><a href="">生活用品</a></li>
			</ul>	
		</div>
			
			<!-------------------Scrolling Image----------------->
		<div class="registerWrap">
			
		</div>
	</div>
	
	

	



	
</body>
</html>