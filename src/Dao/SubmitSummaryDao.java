package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import Bean.Summary;
import Bean.User;

public class SubmitSummaryDao {
	public boolean submitSummary(Summary summary) {
		String sql0 = "select department  from  user where username = ?";
		String sql = "insert into summary values (?, ?, ?, ?, ?, ?, ?, ?, null,? )";
		String sql2 = "select max(sno) from summary";
		PreparedStatement pst = JDBC.executePreparedStatement(sql);
		ResultSet rSet = JDBC.executeQuery(sql2);
		PreparedStatement pst0 = JDBC.executePreparedStatement(sql0);
		try {
			pst0.setString(1, summary.getUsername());
			pst.setString(1, summary.getUsername());
			ResultSet rSet0 = pst0.executeQuery();
			if (rSet0.next()) {
				pst.setString(2, rSet0.getString("department"));
			}
			if (rSet.next()) {
				pst.setInt(3, rSet.getInt(1) + 1);
			}
			pst.setDate(4, summary.getRealleavetime());
			pst.setDate(5, summary.getRealbacktime());
			pst.setInt(6, summary.getRealexpense());
			pst.setString(7, summary.getSummary());
			pst.setInt(8, 0);
			pst.setInt(9, summary.getTno());
			return pst.execute();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}

	public List<Summary> examineSummary(User user) {
		List<Summary> list = new ArrayList<Summary>();
		String sql1 = "select department  from  user where username = ? ";
		String sql2 = "select * from summary where department=? and status=0 order by sno";
		PreparedStatement pst1 = JDBC.executePreparedStatement(sql1);
		PreparedStatement pst2 = JDBC.executePreparedStatement(sql2);

		try {
			pst1.setString(1, user.getUsername());
			ResultSet rSet1 = pst1.executeQuery();
			if(rSet1.next()) {
				pst2.setString(1, rSet1.getString("department"));
			}
	
			ResultSet rSet2 = pst2.executeQuery();
			while (rSet2.next()) {
				Summary s = new Summary();
				s.setUsername(rSet2.getString("username"));
				s.setDepartment(rSet2.getString("department"));
				s.setSno(rSet2.getInt("sno"));
				s.setRealleavetime(rSet2.getDate("realleavetime"));
				s.setRealbacktime(rSet2.getDate("realbacktime"));
				s.setRealexpense(rSet2.getInt("realexpense"));
				s.setSummary(rSet2.getString("summary"));
				s.setStatus(rSet2.getInt("status"));
				list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
	
	public Summary detailSummary(int sno) {
			 String sql=" select * from summary where sno=?";
			 PreparedStatement pst = JDBC.executePreparedStatement(sql);
			 try {
				Summary su=new Summary();
				pst.setInt(1, sno);
				ResultSet rSet=pst.executeQuery();
				 if(rSet.next()) {
					 su.setUsername(rSet.getString("username"));
					 su.setSno(rSet.getInt("sno"));
					 su.setRealleavetime(rSet.getDate("realleavetime"));
					 su.setRealbacktime(rSet.getDate("realbacktime"));
					 su.setRealexpense(rSet.getInt("realexpense"));
					 su.setSummary(rSet.getString("summary"));
					 su.setStatus(rSet.getInt("status"));
					 su.setDepartment(rSet.getString("department"));
					 su.setTno(rSet.getInt("tno"));
					 return su;
				 }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 return null;
		
	}
	public  boolean judge(Summary s) {
		
		String sql= "update summary set status=?,reason=? where sno=?";
		PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
		try {
			pStatement.setInt(1, s.getStatus());
			pStatement.setString(2, s.getReason());
			pStatement.setInt(3, s.getSno());
			pStatement.executeUpdate();
			if(pStatement.executeUpdate()>0) {
				return  true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
public  boolean judge2(Summary s) {
		
		String sql= "update summary set status=? where sno=?";
		PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
		try {
			pStatement.setInt(1, s.getStatus());
			pStatement.setInt(2, s.getSno());
			pStatement.executeUpdate();
			if(pStatement.executeUpdate()>0) {
				return  true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}

}
