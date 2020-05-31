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
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"></button>
			<img src="images/logo.png" align="left" width="50px" height="50px">
			<a class="navbar-brand" href="main.jsp">  다온 CAFE  </a> 
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
				<li><a href=main.jsp>메인</a></li>
				<li><a href=introduce.jsp>카페소개</a></li>
				<li><a href=menu.jsp>메뉴</a></li>
				<li><a href=board.jsp>게시판</a></li>
				<li><a href=guide.jsp>매장안내</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" 
				 role="button" aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp"></a></li>
						<li class="active"><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumpbotron" style="padding-top: 20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="UserName" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="UserID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="UserPW" maxlength="20">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="생년월일"
							name="UserBirth" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control"
						value="회원가입">
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>