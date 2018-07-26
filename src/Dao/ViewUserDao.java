package Dao;

import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

import Bean.User;

public class ViewUserDao {
     public User viewUser(String username) {
    	 String sql = "select * from user where username=?";
    	 PreparedStatement p = JDBC.executePreparedStatement(sql);
    	 try {
    		 p.setString(1, username);
 			ResultSet rSet = p.executeQuery();
 			if(rSet.next()) {
 				User user=new User();
 				user.setUsername(rSet.getString("username"));
 				user.setDepartment(rSet.getString("department"));
 				user.setRealname(rSet.getString("realname"));
 				user.setPosition(rSet.getString("position"));
 				user.setSexual(rSet.getString("sexual"));
 				user.setPhone(rSet.getString("phone"));
 				user.setDmoney(rSet.getInt("dmoney"));
 				return user;
 			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
