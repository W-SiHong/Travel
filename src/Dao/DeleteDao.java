package Dao;

import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;


public class DeleteDao {
	public boolean deleteApplication(int tno) {
		String sql = "DELETE FROM travel_list WHERE tno = ? ";
		try {
			PreparedStatement p = JDBC.executePreparedStatement(sql);
			p.setInt(1, tno);
			p.executeUpdate();
			if (p.executeUpdate()!=0)
				return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;

	}

	public boolean deleteSummary(int sno) {
		String sql = "DELETE FROM summary WHERE sno = ?";
		try {
			PreparedStatement p = JDBC.executePreparedStatement(sql);
			p.setInt(1, sno);
			p.executeUpdate();
			if (p.executeUpdate()!= 0)
				return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;

	}

	public boolean deleteReimburse(int rno) {
		String sql = "DELETE FROM reimburse  WHERE rno = ?";
		try {
			PreparedStatement p = JDBC.executePreparedStatement(sql);
			p.setInt(1, rno);
			p.executeUpdate();
			if (p.executeUpdate()!=0)
				return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;

	}
}
