package user;

public class User {
	private String userID;
	private String userPW;
	private String Name;
	private String Birth;
	private boolean Blacklist;
	
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
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getBirth() {
		return Birth;
	}
	public void setBirth(String birth) {
		Birth = birth;
	}
	public boolean isBlacklist() {
		return Blacklist;
	}
	public void setBlacklist(boolean blacklist) {
		Blacklist = blacklist;
	}
}
