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
			String dbURL = "jdbc:mysql://localhost:3365/�����ͺ��̽��̸�";
			String dbID="root";
			String dbPW= "�����н�����";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPW);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPW) {
		String SQL="SELCECT userPW FROM USER WHERE userID=?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
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
}
