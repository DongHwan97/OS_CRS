<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>다온 카페</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumpbotron" style="padding-top: 20px;">
				<h3 style="text-align: center;">PW찾기</h3>
				<form method="post" action="findPWAction.jsp">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="이름"
						name="userName" maxlength="20" width="300">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="ID"
						name="userID" maxlength="20">
				</div>
				
				<div class="form-group">
					<input type="text" class="form-control" placeholder="생년월일"
						name="userBirth" maxlength="20">
				</div>
				
					<input type="submit" class="btn btn-primary form-control"
						value="PW찾기" style="background-color: #000000; color: #ffffff">
				</form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>