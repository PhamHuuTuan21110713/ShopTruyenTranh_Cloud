<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng nhập</title>
	<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffff;">

	<%@ include file="header.jsp"%>

	<%
	String message = request.getParameter("message");
	%>
	<div class="container" style="background-image: url('./images/loginbackground.png'); height: 500px">
		<div class="row" style=" margin-top: 5%; margin-left: 2px; margin-right: 2px;">
			<form action="./LoginSrv" method="post" class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				  style=" border: 2px solid black; border-radius: 10px; background-color: #ffffff; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: #000; font-weight: bold;">ĐĂNG NHẬP</h2>
					<%
					if (message != null) {
					%>
					<p style="color: blue;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<div></div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Tài khoản đăng nhập</label> <input type="email"
							placeholder="Nhập tài khoản" name="username" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Mật khẩu</label> <input type="password"
							placeholder="Nhập mật khẩu" name="password" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="userrole">Đăng nhập dành cho</label> <select name="usertype"
							id="userrole" class="form-control" required>
							<option value="customer" selected>Khách hàng</option>
							<option value="admin">Admin</option>
						</select>
					</div>
				</div>
				<div class="row" style="margin-top: 50px">
					<div class="col-12 text-center">
						<button style="width: 90%" type="submit" class="btn btn-success">Đăng nhập</button>
					</div>
				</div>
			</form>

		</div>
	</div>

	<%@ include file="footer.html"%>

</body>
</html>
