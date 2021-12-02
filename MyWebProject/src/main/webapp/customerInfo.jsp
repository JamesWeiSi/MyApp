<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ page import = "com.moona.beanmodel.LoggedInBean" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% LoggedInBean lib = (LoggedInBean) request.getSession().getAttribute("lib");%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/regNLogin.css">
	<script type="text/javascript" src="js/reg.js"></script>
	<title>Insert title here</title>
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
		
	
		<!--------------------------------Product catalog--------------------------->
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
			
				<div id="title">
					<p>用户信息
				</div>
				
				<div id="register_table">
					<div id="customer">
						<table align="center">
							<tr>
						         <td>用户名</td>
						         <td id="info">
							         <c:choose>
								         <c:when test="${lib==null}">请登录</c:when>
								         <c:otherwise><% out.println(lib.getUsername()); %></c:otherwise>
							         </c:choose>
						         </td>
							</tr>

						    <tr>
						         <td>收件地址</td>
						         <td id="info">
							         <c:choose>
								         <c:when test="${lib==null}">请登录</c:when>
								         <c:otherwise><% out.println(lib.getAddress()); %></c:otherwise>
							         </c:choose>
							     </td>
						    </tr>
						    <tr>
						         <td>电话号码</td>
						         <td id="info">
							         <c:choose>
								         <c:when test="${lib==null}">请登录</c:when>
								         <c:otherwise><% out.println(lib.getMobile()); %></c:otherwise>
							         </c:choose>
							     </td>
						    </tr>

							<tr>
								<td></td>
								<td><a href="LogoutServlet">登出</a></td>
							</tr>

						</table>
				    </div>
			    </div>

			</div>
		</div>



</body>
</html>