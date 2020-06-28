<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"></button>
			<img src="images/logo.png" align="left" width="50px" height="50px">
			<a class="navbar-brand" href="main.jsp"> 다온 CAFE </a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href=main.jsp>메인</a></li>
				<li><a href=introduction.jsp>카페소개</a></li>
				<li><a href=menu.jsp>메뉴</a></li>
				<li><a href=board.jsp>게시판</a></li>
				<li><a href=location.jsp>찾아오는 길</a></li>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
						<li><a href="findID.jsp">아이디찾기</a></li>
						<li><a href="findPW.jsp">비밀번호찾기</a></li>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">접속관리<span class="caret"></span></a>
					<ul class="dropdown-menu"><li><a href="logoutAction.jsp">로그아웃</a></li></ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
</body>
</html>