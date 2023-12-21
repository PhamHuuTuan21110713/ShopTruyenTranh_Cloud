<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/changes.css">
</head>
<body style="background-color: #fff;">
	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userType == null || !userType.equals("admin")) {

		response.sendRedirect("login.jsp?message=Access Denied, Login as admin!!");

	}

	else if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");

	}
	%>

	<jsp:include page="header.jsp" />

	<%
	String message = request.getParameter("message");
	%>
	<div class="container">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">
			<form action="./AddProductSrv" method="post"
				enctype="multipart/form-data" class="col-md-6 col-md-offset-3"
				style="border: 2px solid black; border-radius: 10px; background-color: #fff; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: #000;">Thêm truyện mới</h2>
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
						<label for="last_name">Tên truyện</label> <input type="text"
							placeholder="" name="name" class="form-control"
							id="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="producttype">Thể loại</label> <select name="type"
							id="producttype" class="form-control" required>
							<option value=science>Khoa học viễn tưởng</option>
							<option value="romance">Tình cảm</option>
							<option value="horror">Kinh dị</option>
							<option value="comedy">Hài hước</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="last_name">Mô tả chi tiết (tác giả, cốt truyện,...)</label>
					<textarea name="info" class="form-control" id="last_name" required></textarea>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<label for="last_name">Đơn giá </label> <input type="number"
							placeholder="" name="price" class="form-control"
							id="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name">Thống kê số lượng</label> <input type="number"
							placeholder="" name="quantity"
							class="form-control" id="last_name" required>
					</div>
				</div>
				<div>
					<div class="col-md-12 form-group">
						<label for="last_name">Hình ảnh</label> <input type="file"
							placeholder="" name="image" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 text-center" style="margin-bottom: 2px;">
						<button type="reset" class="btn btn-danger">Hủy</button>
					</div>
					<div class="col-md-8 text-center">
						<button type="submit" class="btn btn-success">Xác nhận</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<%@ include file="footer.html"%>
</body>
</html>