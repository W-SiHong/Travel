package Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import Bean.TravelList;


public class ExamineApplicationDao {
	public List<TravelList> examineAllList(int n ,String username) {
		List<TravelList> list =new ArrayList<TravelList>();
		TravelList l=null;
		String sql1 = "select department  from  user where username=? ";
		String sql ="select * from travel_list where  department =? and status=? order by tno";
		PreparedStatement pst1 = JDBC.executePreparedStatement(sql1);
		PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
		try {
			pst1.setString(1,username);
			ResultSet rSet1 = pst1.executeQuery();
			if (rSet1.next()) {
				pStatement.setString(1, rSet1.getString("department"));
			}
			pStatement.setInt(2, n);
			ResultSet rSet=pStatement.executeQuery();
			while (rSet.next()) {
				l = new TravelList();
				l.setTno(rSet.getInt("tno"));
				l.setPurposes(rSet.getString("purposes"));
				l.setExpense(rSet.getInt("expense"));
				l.setDestination(rSet.getString("destination"));
				l.setLeavetime(rSet.getDate("leavetime"));
				l.setBacktime(rSet.getDate("backtime"));
				l.setType(rSet.getString("type"));
				l.setPlan(rSet.getString("plan"));
				l.setImg(rSet.getString("img"));
				l.setUsername(rSet.getString("username"));
				l.setNum(rSet.getString("num"));
				l.setTelphone(rSet.getString("telphone"));
				list.add(l);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	public List<TravelList> examineAllList2(int n) {
		List<TravelList> list =new ArrayList<TravelList>();
		TravelList l=null;
		String sql ="select * from travel_list where status=? order by tno";
		PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
		try {
			pStatement.setInt(1, n);
			ResultSet rSet=pStatement.executeQuery();
			while (rSet.next()) {
				l = new TravelList();
				l.setTno(rSet.getInt("tno"));
				l.setPurposes(rSet.getString("purposes"));
				l.setExpense(rSet.getInt("expense"));
				l.setDestination(rSet.getString("destination"));
				l.setLeavetime(rSet.getDate("leavetime"));
				l.setBacktime(rSet.getDate("backtime"));
				l.setType(rSet.getString("type"));
				l.setPlan(rSet.getString("plan"));
				l.setImg(rSet.getString("img"));
				l.setUsername(rSet.getString("username"));
				l.setNum(rSet.getString("num"));
				l.setTelphone(rSet.getString("telphone"));
				list.add(l);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	public TravelList examineOneList(int tno) {
		TravelList l=null;
		try {
			String sql ="select * from travel_list where tno=?";
			PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
			pStatement.setInt(1, tno);
			ResultSet rSet=pStatement.executeQuery();
			if (rSet.next()) {
				l = new TravelList();
				l.setTno(tno);
				l.setPurposes(rSet.getString("purposes"));
				l.setExpense(rSet.getInt("expense"));
				l.setDestination(rSet.getString("destination"));
				l.setLeavetime(rSet.getDate("leavetime"));
				l.setBacktime(rSet.getDate("backtime"));
				l.setType(rSet.getString("type"));
				l.setPlan(rSet.getString("plan"));
				l.setImg(rSet.getString("img"));
				l.setUsername(rSet.getString("username"));
				l.setNum(rSet.getString("num"));
				l.setTelphone(rSet.getString("telphone"));
				return l;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}
	public boolean oncejudge(TravelList list) {
		String sql= "update travel_list set status=?,reason=? where tno=?";
		PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
		try {
			pStatement.setInt(1, list.getStatus());
			pStatement.setString(2, list.getReason());
			pStatement.setInt(3, list.getTno());
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

	public boolean oncejudge2(TravelList list) {
		String sql= "update travel_list set status=? ,reason=? where tno=? and expense>5000";
		String sql2= "update travel_list set status=? ,reason=? where tno=? and expense<=5000";
		PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
		PreparedStatement pStatement2=JDBC.executePreparedStatement(sql2);
		try {
			pStatement.setInt(1, list.getStatus());
			pStatement.setString(2, list.getReason());
			pStatement.setInt(3, list.getTno());
			pStatement2.setInt(1, list.getStatus()+1);
			pStatement2.setString(2, list.getReason());
			pStatement2.setInt(3, list.getTno());
			pStatement.executeUpdate();
			pStatement2.executeUpdate();
			if(pStatement.executeUpdate()>0||pStatement2.executeUpdate()>0) {
				return  true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;	
	}
	public boolean oncejudge3(TravelList list) {
		String sql= "update travel_list set status=? where tno=?";
		PreparedStatement pStatement=JDBC.executePreparedStatement(sql);
		try {
			pStatement.setInt(1, list.getStatus());
			pStatement.setInt(2, list.getTno());
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
