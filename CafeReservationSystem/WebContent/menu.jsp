<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/crs.css">
<title>다온 카페</title>
</head>
<link rel="shortcut icon" type="imgge.x-icon" href="images/favicon.png">
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd;">
				<thead>
					<tr>
						<th style="background-color: #000000; color:#ffffff; text-align: center;">커피</th>
						<th style="background-color: #000000; color:#ffffff; text-align: center;">음료</th>
						<th style="background-color: #000000; color:#ffffff; text-align: center;">디저트</th>
					</tr>
				</thead>
				<tbody>	
			</table>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>