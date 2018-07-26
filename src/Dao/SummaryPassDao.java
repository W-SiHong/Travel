package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import Bean.Summary;

public class SummaryPassDao {
  public List<Summary>  summaryPass(String username) {
	  List<Summary> list =new ArrayList<Summary>();
	 String sql=" select * from summary where username=? and status=1";
	 PreparedStatement pst = JDBC.executePreparedStatement(sql);
	 try {
		pst.setString(1, username);
		ResultSet rSet=pst.executeQuery();
		 while(rSet.next()) {
			 Summary su=new Summary();
			 su.setUsername(rSet.getString("username"));
			 su.setSno(rSet.getInt("sno"));
			 su.setRealleavetime(rSet.getDate("realleavetime"));
			 su.setRealbacktime(rSet.getDate("realbacktime"));
			 su.setRealexpense(rSet.getInt("realexpense"));
			 su.setSummary(rSet.getString("summary"));
			 su.setStatus(rSet.getInt("status"));
			 list.add(su);
		 }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return list;
}
}
