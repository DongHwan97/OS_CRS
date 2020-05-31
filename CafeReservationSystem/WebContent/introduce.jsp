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
<link rel="shortcut icon" type="imgge.x-icon" href="images/favicon.png">
<body>
	<%
		String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"></button>
			<img src="images/logo.png" align="left" width="50px" height="50px">
			<a class="navbar-brand" href="main.jsp">  다온 CAFE  </a> 
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1"">
			<ul class="nav navbar-nav">
				<li><a href=main.jsp>메인</a></li>
				<li class="active"><a href=introduce.jsp>카페소개</a></li>
				<li><a href=menu.jsp>메뉴</a></li>
				<li><a href=board.jsp>게시판</a></li>
				<li><a href=guide.jsp>매장안내</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div>
		<p align="center">다온카페는 커피 및 음료 전문점으로</p>
		<p align="center">TAKE OUT방식을 추구하며 장소를 불문하고 편안하게 드실수 있는</p>
		<p align="center">다양한 음료와 100% 아라비카 원두의 진한 커피를 맛 보실수 있는 커피 전문점입니다.</p>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>