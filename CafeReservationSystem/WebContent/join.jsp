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
				<h3 style="text-align: center;">회원가입</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="이름"
						name="UserName" maxlength="20" width="300">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디"
						name="UserID" maxlength="20">
				</div>
				<div class="form-group">
					<form method="post" action="idCheck.jsp">
					<input type="submit" class="btn btn-primary form-control"
						value="ID중복확인" style="background-color: #000000; color: #ffffff">
				</form>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호"
						name="UserPW" maxlength="20">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="생년월일"
						name="UserBirth" maxlength="20">
				</div>
				<form method="post" action="joinAction.jsp">
					<input type="submit" class="btn btn-primary form-control"
						value="회원가입" style="background-color: #000000; color: #ffffff">
				</form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>