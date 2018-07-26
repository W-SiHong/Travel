package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import Bean.Reimburse;
import Bean.User;

public class ExamineReimburseDao {
	public List<Reimburse> examineReimburse(User user) {
		List<Reimburse> list = new ArrayList<Reimburse>();
		String sql1 = "select department  from  user where username=? ";
		String sql2 = "select * from reimburse where  department=? and status=0 order by rno";
		PreparedStatement pst1 = JDBC.executePreparedStatement(sql1);
		PreparedStatement pst2 = JDBC.executePreparedStatement(sql2);

		try {
			pst1.setString(1, user.getUsername());
			ResultSet rSet1 = pst1.executeQuery();
			if (rSet1.next()) {
				pst2.setString(1, rSet1.getString("department"));
			}

			ResultSet rSet2 = pst2.executeQuery();
			while (rSet2.next()) {
				Reimburse s = new Reimburse();
				s.setUsername(rSet2.getString("username"));
				s.setDepartment(rSet2.getString("department"));
				s.setRno(rSet2.getInt("rno"));
				s.setSno(rSet2.getInt("sno"));
				s.setInfo(rSet2.getString("info"));
				s.setCarmoney(rSet2.getInt("carmoney"));
				s.setHotelmoney(rSet2.getInt("hotelmoney"));
				s.setFoodmoney(rSet2.getInt("foodmoney"));
				s.setCarimg(rSet2.getString("carimg"));
				s.setHotelimg(rSet2.getString("hotelimg"));
				s.setFoodimg(rSet2.getString("foodimg"));
				s.setStatus(rSet2.getInt("status"));
				list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
	public List<Reimburse> examineReimburse2() {
		List<Reimburse> list = new ArrayList<Reimburse>();
		String sql2 = "select * from reimburse where   status=1 order by rno";
		PreparedStatement pst2 = JDBC.executePreparedStatement(sql2);

		try {
			ResultSet rSet2 = pst2.executeQuery();
			while (rSet2.next()) {
				Reimburse s = new Reimburse();
				s.setUsername(rSet2.getString("username"));
				s.setDepartment(rSet2.getString("department"));
				s.setRno(rSet2.getInt("rno"));
				s.setSno(rSet2.getInt("sno"));
				s.setInfo(rSet2.getString("info"));
				s.setCarmoney(rSet2.getInt("carmoney"));
				s.setHotelmoney(rSet2.getInt("hotelmoney"));
				s.setFoodmoney(rSet2.getInt("foodmoney"));
				s.setCarimg(rSet2.getString("carimg"));
				s.setHotelimg(rSet2.getString("hotelimg"));
				s.setFoodimg(rSet2.getString("foodimg"));
				s.setStatus(rSet2.getInt("status"));
				list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	public Reimburse detailReimburse(int rno) {
		String sql = " select * from reimburse where rno=?";
		PreparedStatement pst = JDBC.executePreparedStatement(sql);
		try {
			Reimburse s = new Reimburse();
			pst.setInt(1, rno);
			ResultSet rSet = pst.executeQuery();
			if (rSet.next()) {
				s.setUsername(rSet.getString("username"));
				s.setDepartment(rSet.getString("department"));
				s.setRno(rSet.getInt("rno"));
				s.setSno(rSet.getInt("sno"));
				s.setInfo(rSet.getString("info"));
				s.setCarmoney(rSet.getInt("carmoney"));
				s.setHotelmoney(rSet.getInt("hotelmoney"));
				s.setFoodmoney(rSet.getInt("foodmoney"));
				s.setCarimg(rSet.getString("carimg"));
				s.setHotelimg(rSet.getString("hotelimg"));
				s.setFoodimg(rSet.getString("foodimg"));
				s.setStatus(rSet.getInt("status"));
				return s;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public boolean judge(Reimburse s) {
		int k=s.getStatus();
		String sql0 = "select sum(carmoney+hotelmoney+foodmoney) from reimburse where rno= ?";
		try {
			int rno = s.getRno();
			PreparedStatement p = JDBC.executePreparedStatement(sql0);
			ResultSet r2 = p.executeQuery();
			p.setInt(1, rno);
			if (r2.next()) {
				if (r2.getInt(1) < 5000 && k==1) {
                   k++;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		String sql = "update  reimburse set status=?,reason=? where rno=? ";
		if (k==2) {
			String s1 = "select username from reimburse where rno= ? ";
			String s2 = "select sum(carmoney+hotelmoney+foodmoney) from reimburse where rno= ?";
			String s3 = "select dmoney from user where username= ? ";
			String s4 = "select money from company";
			String s5 = "update company set money=? ";
			String s6 = "update user set dmoney=? where username=? ";
			PreparedStatement p1 = JDBC.executePreparedStatement(s1);
			PreparedStatement p2 = JDBC.executePreparedStatement(s2);
			PreparedStatement p3 = JDBC.executePreparedStatement(s3);
			PreparedStatement p4 = JDBC.executePreparedStatement(s4);
			PreparedStatement p5 = JDBC.executePreparedStatement(s5);
			PreparedStatement p6 = JDBC.executePreparedStatement(s6);
			int rno = s.getRno();
			int money0 = 0, money1 = 0, money2 = 0;
			String username = null;
			try {

				p1.setInt(1, rno);
				p2.setInt(1, rno);
				ResultSet r1 = p1.executeQuery();
				if (r1.next()) {
					username = r1.getString(1);
				}
				ResultSet r2 = p2.executeQuery();
				if (r2.next()) {
					money0 = r2.getInt(1);
				}
				p3.setString(1, r1.getString(1));
				ResultSet r3 = p3.executeQuery();
				if (r3.next()) {
					money1 = r3.getInt(1);
				}
				ResultSet r4 = p4.executeQuery();
				if (r4.next()) {
					money2 = r4.getInt(1);
				}
				p5.setInt(1, money2 - money0);
				p6.setInt(1, money1 + money0);
				p6.setString(2, username);
				p5.executeUpdate();
				p6.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		PreparedStatement pStatement = JDBC.executePreparedStatement(sql);
		try {
			pStatement.setInt(1, s.getStatus());
			pStatement.setString(2, s.getReason());
			pStatement.setInt(3, s.getRno());
			pStatement.executeUpdate();
			if (pStatement.executeUpdate() > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
}
