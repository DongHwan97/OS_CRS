package board;

public class Board {
	private int boardID;//게시글번호
	private String boardTitle;//게시글제목
	private String userID;//사용자ID
	private String boardDate;//게시글 쓴 날짜
	private String boardContent;//게시글 내용
	private int boardAvailable;//게시글 유무
	
	public int getBoardID() {
		return boardID;
	}
	
	public void setBoardID(int boardID) {
		this.boardID = boardID;
	}
	
	public String getBoardTitle() {
		return boardTitle;
	}
	
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	
	public String getUserID() {
		return userID;
	}
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	public String getBoardDate() {
		return boardDate;
	}
	
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	
	public String getBoardContent() {
		return boardContent;
	}
	
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	
	public int getBoardAvailable() {
		return boardAvailable;
	}
	
	public void setBoardAvailable(int boardAvailable) {
		this.boardAvailable = boardAvailable;
	}
}
