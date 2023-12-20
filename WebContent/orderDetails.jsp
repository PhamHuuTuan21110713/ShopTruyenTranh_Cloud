<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.shashi.service.impl.*, com.shashi.service.*,com.shashi.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Details</title>
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
<body style="background-color: #ffffff;">

	<%
	/* Checking the user credentials */
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");

	}

	OrderService dao = new OrderServiceImpl();
	List<OrderDetails> orders = dao.getAllOrderDetails(userName);
	%>



	<jsp:include page="header.jsp" />

	<!-- <script>document.getElementById('mycart').innerHTML='<i data-count="20" class="fa fa-shopping-cart fa-3x icon-white badge" style="background-color:#333;margin:0px;padding:0px; margin-top:5px;"></i>'</script>
 -->
	<div class="text-center"
		style="color: green; font-size: 24px; font-weight: bold;">Chi tiết đơn hàng</div>
	<!-- Start of Product Items List -->
	<div class="container">
		<div class="table-responsive " style="border-radius: 20px;">
			<table class="table table-hover table-sm" style="border: 3px solid #113ef3; padding: 10px; border-radius: 20px;border-spacing: 0;">
				<thead
					style="background-color: #113ef3; color: white; font-size: 14px; font-weight: bold;">
					<tr>
						<th>Sách</th>
						<th>Tên sách</th>
						<th>Mã số</th>
						<th>Số lượng</th>
						<th>Giá</th>
						<th>Thời gian mua</th>
						<th>Trạng thái</th>
					</tr>
				</thead>
				<tbody
					style="background-color: white; font-size: 15px; font-weight: bold;">
					<%
					for (OrderDetails order : orders) {
					%>

					<tr style="border-radius: 20px; border-color: 2px solid #0b0f13">
						<td><img src="./ShowImage?pid=<%=order.getProductId()%>"
							style="width: 50px; height: 50px;"></td>
						<td><%=order.getProdName()%></td>
						<td><%=order.getOrderId()%></td>
						<td><%=order.getQty()%></td>
						<td><%=order.getAmount()%></td>
						<td><%=order.getTime()%></td>
						<td class="text-success"><%=order.getShipped() == 0 ? "Đã đặt hàng" : "Đơn hàng đã được giao"%></td>
					</tr>

					<%
					}
					%>

				</tbody>
			</table>
		</div>
	</div>
	<!-- ENd of Product Items List -->


	<%@ include file="footer.html"%>
</body>
</html>
