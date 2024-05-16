package ch08;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class KicMemberDAO {
// DAO(Data Access Object)


public Connection getConnection() {
	//1. driver
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager
				.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic24", "1234");
        return conn;
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	//2 connection
    catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return null;
	
}

public String getMember(String id) {
	Connection conn = getConnection();
	PreparedStatement pstmt=null;
	String sql = 
	"select pass from kicmember where id = ?";
	//4. mapping
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			//id 있음
			String dpass = rs.getString("pass");
		return dpass;
		} else {
			return null;
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
		return null;
	}
	
	
public int insertMember(KicMember kic) {
	Connection conn = getConnection();
	//3. PreparedStatement
	PreparedStatement pstmt=null;
	String sql = 
	"insert into kicmember values (?,?,?,?,?,?,?)";
	//4. mapping
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, kic.getId());
		pstmt.setString(2, kic.getPass());
		pstmt.setString(3, kic.getName());
		pstmt.setInt(4, kic.getGender());
		pstmt.setString(5, kic.getTel());
		pstmt.setString(6, kic.getEmail());
		pstmt.setString(7, "");
		//sql 실행
		int num = pstmt.executeUpdate();
		
		return num;
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return 0;
	
}
}
