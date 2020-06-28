package user;

public class User {

	private String userID;//아이디
	private String userPW;//패스워드
	private String userName;//이름
	private String userBirth;//생년월일

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPW() {
		return userPW;
	}

	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String username) {
		userName = username;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userbirth) {
		userBirth = userbirth;
	}
}
