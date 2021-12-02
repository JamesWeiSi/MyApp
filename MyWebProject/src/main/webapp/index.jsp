<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "com.moona.beanmodel.LoggedInBean" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% LoggedInBean lib = (LoggedInBean) request.getSession().getAttribute("lib");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/style1.css">
	<script type="text/javascript" src="js/scrolling_image.js"></script>
	<title>绿色新西兰</title>
</head>
<body>

	<!-----------------------------------Header---------------------------------->
	<div>
		<ul class="header">
			<li>欢迎来到 摩娜国际</li>

			<c:choose>
				<c:when test="${lib==null}">
					
					<li class="header2"><a href="register.jsp">注册</a></li>
					<li class="header2"> | </li>
					<li class="header2"><a href="login.jsp">登录</a></li>
				</c:when>
				<c:otherwise>
					<li class="header2" id="h_right"><% out.println("欢迎回来 "+lib.getUsername()); %></li>
				</c:otherwise>
			</c:choose>
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
			<li><a href="index.jsp">首页</a></li>
			<li><a href="special.jsp">特价专区</a></li>
			<li><a href="fruitsOfSeason.jsp">纽澳当季水果</a></li>
			<li><a href="customerService.jsp">联系客服</a></li>
			<li><a href="customerInfo.jsp">会员信息</a></li>
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
			<div class="scrollingImg">
				<div id="scrolling1">
					<ul id="imgs">
						<li><img src="img/1.jpg" />
						<li><img src="img/2.jpg" />
						<li><img src="img/3.jpg" />			
						<li><img src="img/4.jpg" />			
					</ul>
					
				</div>
			</div>
	</div>
	
	
	<!--------------------------------------Middle Picture-------------------------------------->
	
	<div class="midPicture">
			<img src="img/prairie.jpg">
	
	</div>
	
	<!--------------------------------Border line of special area-------------------------------->
		<div class="borderLine">
			<div class="left">
				<img alt="" src="img/border line.png">
			</div>
			<div class="line">特价区</div>
			<div class="right">
				<img alt="" src="img/border line.png">
			</div>
		</div>	

	
	<!----------------------------------Products on special------------------------------------->
	<div class="productsOnSpecial">
		<div class="special1">
		</div>
		
		<div class="special2">
		</div>
		
		<div class="special3">
		</div>
		
		<div class="special4">
		</div>
		
		<div class="special5">
		</div>
		
		<div class="special6">
		</div>
		
		<div class="special7">
		</div>
		
		<div class="special8">
		</div>
	
	</div>
	

	<!-----------------------------------Border line of gallery-------------------------------->
	<div class="borderLine">
			<div class="left">
				<img alt="" src="img/border line.png">
			</div>
			<div class="line">奶粉区</div>
			<div class="right">
				<img alt="" src="img/border line.png">
			</div>
			<div class="more">
				<a href="" >+更多商品</a>
			</div>
	</div>	
	
	
	
			
	<!-------------------------------------Milk powder gallery--------------------------------------->
	
	<div>		
		<div class="productsGallery">
			<!--------- Milk product 1 --------->
			<div class="product 1">
				<div class="picture 1">
					<a href="">
						<img src="" alt="图片缺失" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
				<div class="price">价格</div>
			</div>

			<!--------- Milk product 2 --------->
			<div class="product 2">
				<div class="picture 2">
					<a href="">
						<img src="img/3.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			
			<!--------- Milk product 3 --------->
			<div class="product 3">
				<div class="picture 3">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			
			<!--------- Milk product 4 --------->
			<div class="product 4">
				<div class="picture 4">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 5 --------->
			<div class="product 5">
				<div class="picture 5">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 6 --------->
			<div class="product 6">
				<div class="picture 6">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 7 --------->
			<div class="product 7">
				<div class="picture 7">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 8 --------->
			<div class="product 8">
				<div class="picture 8">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
						
			<!--------- Milk product 9 --------->
			<div class="product 9">
				<div class="picture 9">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
						
			<!--------- Milk product 10 --------->
			<div class="product 10">
				<div class="picture 10">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
		</div>
	</div>
	
	
	
	<!-------------------------------------Border line of gallery----------------------------------->
	<div class="borderLine">
			<div class="left">
				<img alt="" src="img/border line.png">
			</div>
			<div class="line">蜂蜜区</div>
			<div class="right">
				<img alt="" src="img/border line.png">
			</div>
			<div class="more">
				<a href="" >+更多商品</a>
			</div>
	</div>	
	
	
	
				
	<!-----------------------------------------Honey gallery------------------------------------------>
	
		<div>		
		<div class="productsGallery">
			<!--------- Milk product 1 --------->
			<div class="product 1">
				<div class="picture 1">
					<a href="">
						<img src="img/2.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>

			<!--------- Milk product 2 --------->
			<div class="product 2">
				<div class="picture 2">
					<a href="">
						<img src="img/3.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			
			<!--------- Milk product 3 --------->
			<div class="product 3">
				<div class="picture 3">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			
			<!--------- Milk product 4 --------->
			<div class="product 4">
				<div class="picture 4">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 5 --------->
			<div class="product 5">
				<div class="picture 5">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 6 --------->
			<div class="product 6">
				<div class="picture 6">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 7 --------->
			<div class="product 7">
				<div class="picture 7">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
			<!--------- Milk product 8 --------->
			<div class="product 8">
				<div class="picture 8">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
						
			<!--------- Milk product 9 --------->
			<div class="product 9">
				<div class="picture 9">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
			
						
			<!--------- Milk product 10 --------->
			<div class="product 10">
				<div class="picture 10">
					<a href="">
						<img src="img/4.jpg" id="images">
					</a>
				</div>
				<div class="dscrip">产品描述</div>
			</div>
		</div>
	</div>
	
</body>
</html>