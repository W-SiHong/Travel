package Dao;

import java.sql.ResultSet;


import Bean.User;

public class LoginDao {
public User validate(User u) {
	User user=null;
	String sql= "select * from user where "+
            "username='"+u.getUsername()+
			"' and password='"+u.getPassword()+"'";
	try {
		ResultSet rSet=JDBC.executeQuery(sql);
		if(rSet.next()) {
			user=new User();
			user.setPosition(rSet.getString("position"));
			user.setDepartment(rSet.getString("department"));
			user.setRealname(rSet.getString("realname"));
			return user;
		}
	} catch (Exception e) {
		// TODO: handle exception
	}
	return null;
	
}
}
