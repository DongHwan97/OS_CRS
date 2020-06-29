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
<title>다온 카페</title>
</head>
<link rel="shortcut icon" type="imgge.x-icon" href="images/favicon.png">
<body>
	<%
		int boardID = 0;
	if (request.getParameter("boardID") != null) {
		boardID = Integer.parseInt(request.getParameter("boardID"));
	}
	if (boardID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('옳바르지 않은 글입니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	Board board = new BoardDAO().getBoard(boardID);

	String userID = null;
	
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시글</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">제목</td>
						<td colspan="2"><%=board.getBoardTitle().replaceAll("", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=board.getUserID()%></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td colspan="2"><%=board.getBoardDate().substring(0, 11) + board.getBoardDate().substring(11, 13) + "시"+ board.getBoardDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td></td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=board.getBoardContent().replaceAll("", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></td>
					</tr>
				</tbody>
			</table>
			<a href="board.jsp" class="btn btn-primary" style="background-color: #000000; color: #ffffff">목록</a>
			<%
				if (userID != null & userID.equals(board.getUserID())) {
			%>
			<a href="modify.jsp?boardID=<%=boardID%>" class="btn btn-primary" style="background-color: #000000; color: #ffffff">수정</a>
			<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?boardID=<%=boardID%>"class="btn btn-primary" style="background-color: #000000; color: #ffffff">삭제</a>
			<%
				}
			%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>