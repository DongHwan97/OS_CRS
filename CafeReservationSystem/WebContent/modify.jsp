<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.Board"%>
<%@ page import="board.BoardDAO"%>
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
	<%
		String userID = null;
	if (session.getAttribute("userID") != null)
	{
		userID = (String) session.getAttribute("userID");
	}
	if(userID==null)
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 후 이용해주세요.')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	}
	int boardID=0;
	if(request.getParameter("boardID")!=null){
		boardID=Integer.parseInt(request.getParameter("boardID"));
	}
	if(boardID==0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('옳바르지 않은 글입니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	Board board = new BoardDAO().getBoard(boardID);
	if(!userID.equals(board.getUserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('게시글에 권한이 없습니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"></button>
			<img src="images/logo.png" align="left" width="50px" height="50px">
			<a class="navbar-brand" href="main.jsp">다온 CAFE</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href=main.jsp>메인</a></li>
				<li><a href=introduce.jsp>카페소개</a></li>
				<li><a href=menu.jsp>메뉴</a></li>
				<li><a href=board.jsp>게시판</a></li>
				<li><a href=location.jsp>찾아오는 길</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">접속관리<span class="caret"></span></a>
					<ul class="dropdown-menu"><li><a href="logoutAction.jsp">로그아웃</a></li></ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<form method="post" action="modifyAction.jsp?boardID=<%= boardID %>">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">글 수정</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="제목" name="boardTitle" maxlength="50" value="<%=board.getBoardTitle() %>"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="내용" name="boardContent" maxlength="2048" style="height: 350px;"><%=board.getBoardContent() %></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="수정하기" style="background-color: #000000; color: #ffffff">
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>