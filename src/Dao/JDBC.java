package Dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class JDBC {
	static Statement s = null;
	static ResultSet rs = null;
	static Connection conn = null;

	public static synchronized Connection getConnection() {
		try {	
			Class.forName("com.mysql.jdbc.Driver");
			conn =  (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/database?characterEncoding=utf8&useSSL=false","root","123456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static int executeUpdate(String sql) {
		int result = 0;
		try {
			s = (Statement) getConnection().createStatement();
			result = s.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public static ResultSet executeQuery(String sql) {
		try {
			s = (Statement) getConnection().createStatement();
			rs = s.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static PreparedStatement executePreparedStatement(String sql) {
		PreparedStatement ps=null;
		try {
			ps=(PreparedStatement) getConnection().prepareStatement(sql);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return ps;
	}
	public static void rollback() {
		try {
			getConnection().rollback();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close() {
		try {
			if(rs!=null) rs.close();
			if(s!=null) s.close();
			if(conn!=null) conn.close();		
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
