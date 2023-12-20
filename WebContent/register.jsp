<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
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
		<div class="row"
			style="margin-top: 3%; margin-left: 3px; margin-right: 3px;">

			<form action="./RegisterSrv" method="post"
				class="col-md-6 col-md-offset-3"
				  style="border: 2px solid black; border-radius: 10px; background-color: #ffffff; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: green;font-weight: bold;">Đăng ký</h2>
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
					<div class="col-md-6 form-group">
						<label for="first_name">Họ tên</label> <input type="text"
							name="username" class="form-control" id="first_name"
							name="first_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name">Email</label> <input type="email"
							name="email" class="form-control" id="last_name" name="last_name"
							required>
					</div>
				</div>
				<div class="form-group">
					<label for="last_name">Địa chỉ</label>
					<textarea name="address" class="form-control" id="last_name"
						name="last_name" required></textarea>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<label for="last_name">Số điện thoại</label> <input type="number"
							name="mobile" class="form-control" id="last_name"
							name="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name">Mã PIN</label> <input type="number"
							name="pincode" class="form-control" id="last_name"
							name="last_name" required>
					</div>

				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<label for="last_name">Mật khẩu</label> <input type="password"
							name="password" class="form-control" id="last_name"
							name="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name">Xác nhận mật khẩu</label> <input
							type="password" name="confirmPassword" class="form-control"
							id="last_name" name="last_name" required>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-6" style="margin-bottom: 2px;">
						<button type="Reset" class="btn btn-danger">Huỷ</button>
					</div>
					<div class="col-md-6">
						<button type="submit" class="btn btn-success">Đăng ký</button>
					</div>
				</div>
			</form>
		</div>
	</div>


	<%@ include file="footer.html"%>
</body>
</html>
