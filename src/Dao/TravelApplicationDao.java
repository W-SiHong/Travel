package Dao;


import java.sql.ResultSet;
import com.mysql.jdbc.PreparedStatement;
import Bean.TravelList;

public class TravelApplicationDao {
public boolean travelapplication(TravelList list) {
	String sql="insert into travel_list values (?, ?, ? ,?, ?, ?, ?, ?, ?, ?, ?, ?, 0, null, ?)";
	String sql2="select max(tno) from travel_list";
	String sql0 = "select department  from  user where username = ?";
	PreparedStatement pst0 = JDBC.executePreparedStatement(sql0);
	
	PreparedStatement pst=JDBC.executePreparedStatement(sql);
	ResultSet rSet=JDBC.executeQuery(sql2);
	try {
		 pst.setString(1,list.getUsername());
		 pst.setString(2, list.getNum());
		 pst0.setString(1, list.getUsername());
			ResultSet rSet0 = pst0.executeQuery();
		 if (rSet0.next()) {
				pst.setString(3, rSet0.getString("department"));
			}
		if(rSet.next()) {
			pst.setInt(4,rSet.getInt(1)+1);
		}
		pst.setString(5, list.getPurposes());
		pst.setInt(6, list.getExpense());
		pst.setString(7, list.getDestination());
		pst.setDate(8, list.getLeavetime());
		pst.setDate(9, list.getBacktime());
		pst.setString(10, list.getType());
		pst.setString(11, list.getPlan());
		pst.setString(12, list.getImg());
		pst.setString(13, list.getTelphone());
		return pst.execute();
		
	} catch (Exception e) {
		 e.printStackTrace();
	}
	return true;
}
}
