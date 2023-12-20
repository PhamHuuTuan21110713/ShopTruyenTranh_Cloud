<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.shashi.service.impl.*, com.shashi.service.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Logout Header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href="https://fonts.cdnfonts.com/css/roboto" rel="stylesheet">
	<style>

		.background-slider {
			background-image: url(./images/slider-1.webp);
			width: 100%;
			background-repeat: no-repeat;
			background-size: cover;
			background-position: center;
			padding-left: 0 !important;
			padding-right: 0 !important;
			padding-top: 50%;
			position: relative;
			text-align: center;
		}
		.background-slider::before {
			content: "";
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			width: 100%;
			height: 100%;
			background-image: linear-gradient(90deg,rgba(0,0,0,0.95),rgba(0,0,0,0.5),rgba(0,0,0,0.95));

		}
		.header-shopname {
			font-family: Roboto;
			font-weight: 900;
			color: #fff;
			font-size: 60px;
		}
		.header-context {
			color: #fff;
			font-family: Roboto;
			font-weight: 600;
			font-size: 17px;
		}
		.content-silder {
			position: absolute;
			top: 40%;
			width: 100%;
			text-align: center;
		}
		.header-finding--container {

			position: relative;
		}
		.header-brand {
			display: flex;
			justify-content: center;
			align-items: center;
		}
		.shop-icon {
			line-height: 2.7;
		}
	</style>
</head>
<body style="background-color: #E6F9E6;">
	<!--Company Header Starting  -->
	<div class=" background-slider container-fluid text-center">
		<div class="content-silder">
			<h2 class="header-shopname ">COMIC STORE</h2>
			<h6 class="header-context">Thỏa đam mê đọc truyện</h6>
			<form class="form-inline" action="index.jsp" method="get">
				<div class="input-group header-finding--container">
					<input type="text" class="input-finding form-control" size="50" name="search"
						   placeholder="Search Items" required>
					<div class="input-group-btn header-search--button">
						<input type="submit" class="btn btn-danger" value="Search" />
					</div>
				</div>
			</form>
			<p align="center"
			   style="color: blue; font-weight: bold; margin-top: 5px; margin-bottom: 5px;"
			   id="message"></p>
		</div>

	</div>
	<!-- Company Header Ending -->

	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	if (userType == null) { //LOGGED OUT
	%>

	<!-- Starting Navigation Bar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="header-brand navbar-brand" href="index.jsp"><i class="fa-solid fa-shop shop-icon"></i>COMIC STORE</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">

					<li><a href="login.jsp">Login</a></li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="index.jsp">Products</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="index.jsp?type=science">Khoa học viễn tưởng</a></li>
							<li><a href="index.jsp?type=romance">Tình cảm</a></li>
							<li><a href="index.jsp?type=horror">Kinh dị</a></li>
							<li><a href="index.jsp?type=comedy">Hài hước</a></li>
						</ul></li>
					<li><a href="login.jsp">Đăng nhập</a></li>
					<li><a href="register.jsp">Đăng ký</a></li>
					<li><a href="index.jsp">Sản phẩm</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<%
	} else if ("customer".equalsIgnoreCase(userType)) { //CUSTOMER HEADER

	int notf = new CartServiceImpl().getCartCount((String) session.getAttribute("username"));
	%>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="header-brand navbar-brand" href="userHome.jsp"><i class="fa-solid fa-shop shop-icon"></i>COMIC STORE</a>
			</div>

			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="userHome.jsp"><span
							class="glyphicon glyphicon-home">Products</span></a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="index.jsp?type=science">Khoa học viễn tưởng</a></li>
							<li><a href="index.jsp?type=romance">Tình cảm</a></li>
							<li><a href="index.jsp?type=horror">Kinh dị</a></li>
							<li><a href="index.jsp?type=comedy">Hài hước</a></li>
						</ul></li>
							class="glyphicon glyphicon-home">Sản phẩm</span></a></li>
					<%
					if (notf == 0) {
					%>
					<li><a href="cartDetails.jsp"> <span
							class="glyphicon glyphicon-shopping-cart"></span>Giỏ hàng
					</a></li>

					<%
					} else {
					%>
					<li><a href="cartDetails.jsp"
						style="margin: 0px; padding: 0px;" id="mycart"><i
							data-count="<%=notf%>"
							class="fa fa-shopping-cart fa-3x icon-white badge"
							style="background-color: #333; margin: 0px; padding: 0px; padding-bottom: 0px; padding-top: 5px;">
						</i></a></li>
					<%
					}
					%>
					<li><a href="orderDetails.jsp">Đơn hàng</a></li>
					<li><a href="userProfile.jsp">Hò sơ</a></li>
					<li><a href="./LogoutSrv">Đăng xuất</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<%
	} else { //ADMIN HEADER
	%>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class=" header-brand navbar-brand" href="adminViewProduct.jsp"><i class="shop-icon fa-solid fa-shop"></i>COMIC STORE</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="adminViewProduct.jsp">Products</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="index.jsp?type=science">Khoa học viễn tưởng</a></li>
							<li><a href="index.jsp?type=romance">Tình cảm</a></li>
							<li><a href="index.jsp?type=horror">Kinh dị</a></li>
							<li><a href="index.jsp?type=comedy">Hài hước</a></li>
						</ul></li>
					<li><a href="adminStock.jsp">Stock</a></li>
					<li><a href="shippedItems.jsp">Shipped</a></li>
					<li><a href="unshippedItems.jsp">Orders</a></li>
					<li><a href="adminViewProduct.jsp">Sản phẩm</a></li>

					<li><a href="adminStock.jsp">Thống kê</a></li>
					<li><a href="shippedItems.jsp">Đã giao</a></li>
					<li><a href="unshippedItems.jsp">Đơn hàng</a></li>
					<!-- <li><a href=""> <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;Cart</a></li> -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Thao tác <span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="addProduct.jsp">Thêm sản phẩm</a></li>
							<li><a href="removeProduct.jsp">Xóa sản phẩm</a></li>
							<li><a href="updateProductById.jsp">Cập nhật sản phẩm</a></li>
						</ul></li>
					<li><a href="./LogoutSrv">Đăng xuất</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<%
	}
	%>
	<!-- End of Navigation Bar -->
<script>
	document.addEventListener('DOMContentLoaded',()=>{
		var sliderHeight = document.querySelector(".background-slider").offsetHeight;
		window.addEventListener('scroll', ()=> {
			var scrollPosition = window.scrollY || document.documentElement.scrollTop;


			if (scrollPosition >= sliderHeight) {

				document.querySelector('.navbar').style.backgroundColor = '#000';
			} else {

				document.querySelector('.navbar').style.backgroundColor = 'transparent';
			}
		});
	})
</script>
</body>
</html>