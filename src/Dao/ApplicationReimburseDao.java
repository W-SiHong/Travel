package Dao;

import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

import Bean.Reimburse;

public class ApplicationReimburseDao {
	public boolean applicationReimburse(Reimburse re) {
		String sql0 = "select department  from  user where username = ?";
		PreparedStatement pst0 = JDBC.executePreparedStatement(sql0);
		String sql = "insert into reimburse values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,null,0)";
		String sql2 = "select max(rno) from reimburse";
		PreparedStatement pst = JDBC.executePreparedStatement(sql);
		ResultSet rSet = JDBC.executeQuery(sql2);
		try {
			pst0.setString(1, re.getUsername());
			pst.setString(1, re.getUsername());
			ResultSet rSet0 = pst0.executeQuery();
			if (rSet0.next()) {
				pst.setString(2, rSet0.getString("department"));
			}
			if (rSet.next()) {
				pst.setInt(3, rSet.getInt(1)+ 1);
			}
			pst.setInt(4, re.getSno());
			pst.setString(5,re.getInfo());
			pst.setInt(6, re.getCarmoney());
			pst.setInt(7, re.getHotelmoney());
			pst.setInt(8, re.getFoodmoney());
			pst.setString(9,re.getCarimg());
			pst.setString(10,re.getHotelimg());
			pst.setString(11,re.getFoodimg());
			return pst.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
}
