package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;
import com.mm.UserDTO.*;

public class Jdbc {
static Connection getConnection() throws ClassNotFoundException, SQLException {
	ResourceBundle rb=ResourceBundle.getBundle("config");
	Class.forName(rb.getString("driver"));
	Connection con=DriverManager.getConnection(rb.getString("url"),rb.getString("userid"),rb.getString("password"));
	return con;
}

public boolean userExist(UserDto user) throws SQLException, ClassNotFoundException {
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	boolean isUser=false;
	
	try {
		con=getConnection();
		ps=con.prepareStatement("select username,password from user_mst where username=? and password=?;");
		ps.setString(1,user.getUsername());
		ps.setString(2, user.getPassword());
		rs=ps.executeQuery();
		if(rs.next()) {
			isUser=true;
		}
	}
	finally {
		if(rs!=null)
			rs.close();
		else if(ps!=null)
			ps.close();
		else if(con!=null) {
			con.close();
		}
	}
	return isUser;
}
}
