package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://182.209.99.115/info?serverTimezone=Asia/Seoul";
			String dbID="pjw";
			String dbPW= "1q2w3e";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPW);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPW) {
		String SQL="SELECT userPW FROM USER WHERE userID = ?";
		
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPW))
					return 1;//�α��μ���
				else
					return 0;//��й�ȣ ����ġ
			}
			return -1;//���̵� db�� ������
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public int join(User user) {
		String SQL="INSERT INTO USER VALUES (?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,user.getUserID());
			pstmt.setString(2,user.getUserName());
			pstmt.setString(3,user.getUserPW());
			pstmt.setString(4,user.getUserBirth());
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public String findID(String userName, String userBirth) {
		String ID=null;
		String SQL="SELECT userID FROM USER WHERE userName = ? AND userBirth = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setString(2, userBirth);

			rs=pstmt.executeQuery();
			while(rs.next())
			{
				ID=rs.getString("userID"); 
				return ID;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "x";//�����ͺ��̽� ����
	}
	
	public String findPW(String userName, String userID, String userBirth) {
		String PW=null;
		String SQL="SELECT userPW FROM USER WHERE userName = ? AND userID = ? AND userBirth = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setString(2, userID);
			pstmt.setString(3, userBirth);

			rs=pstmt.executeQuery();
			while(rs.next())
			{
				PW=rs.getString("userPW"); 
				return PW;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "x";//�����ͺ��̽� ����
	}

}
