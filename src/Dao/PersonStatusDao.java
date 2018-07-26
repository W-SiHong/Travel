package Dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import Bean.Reimburse;
import Bean.Summary;
import Bean.TravelList;

public class PersonStatusDao {

	public List<TravelList> cheakApplicationStatus(String username) {
		List<TravelList> list = new ArrayList<TravelList>();
		TravelList l = null;
		String sql = "select * from travel_list where username=?";
		PreparedStatement p = JDBC.executePreparedStatement(sql);
		try {
			p.setString(1, username);
			ResultSet rSet = p.executeQuery();
			while (rSet.next()) {
				l = new TravelList();
				l.setTno(rSet.getInt("tno"));
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
				l.setDepartment(rSet.getString("department"));
				l.setReason(rSet.getString("reason"));
				l.setStatus(rSet.getInt("status"));
				l.setPurposes(rSet.getString("purposes"));
				list.add(l);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}
	
	public List<TravelList> applicationPass(String username) {
		List<TravelList> list = new ArrayList<TravelList>();
		TravelList l = null;
		String sql = "select * from travel_list where username=? and status=3";
		PreparedStatement p = JDBC.executePreparedStatement(sql);
		try {
			p.setString(1, username);
			ResultSet rSet = p.executeQuery();
			while (rSet.next()) {
				l = new TravelList();
				l.setTno(rSet.getInt("tno"));
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
				l.setDepartment(rSet.getString("department"));
				l.setReason(rSet.getString("reason"));
				l.setStatus(rSet.getInt("status"));
				l.setPurposes(rSet.getString("purposes"));
				list.add(l);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}
	public List<Summary> cheakSummaryStatus(String username) {
		List<Summary> list = new ArrayList<Summary>();
		Summary l = null;
		String sql = "select * from summary where username=?";
		PreparedStatement p = JDBC.executePreparedStatement(sql);
		try {
			p.setString(1, username);
			ResultSet rSet = p.executeQuery();
			while (rSet.next()) {
				l = new Summary();
				l.setTno(rSet.getInt("tno"));
				l.setSno(rSet.getInt("sno"));
				l.setStatus(rSet.getInt("status"));
				l.setRealexpense(rSet.getInt("realexpense"));
				l.setRealleavetime(rSet.getDate("realleavetime"));
				l.setRealbacktime(rSet.getDate("realbacktime"));
				l.setSummary(rSet.getString("summary"));
				l.setReason(rSet.getString("reason"));
				l.setUsername(rSet.getString("username"));
				l.setDepartment(rSet.getString("department"));
				list.add(l);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<Reimburse> cheakReimburseStatus(String username) {
		List<Reimburse> list = new ArrayList<Reimburse>();
		Reimburse l = null;
		String sql = "select * from reimburse where username=?";
		PreparedStatement p = JDBC.executePreparedStatement(sql);
		try {
			p.setString(1, username);
			ResultSet rSet = p.executeQuery();
			while (rSet.next()) {
				l = new Reimburse();
				l.setRno(rSet.getInt("rno"));
				l.setSno(rSet.getInt("sno"));
				l.setStatus(rSet.getInt("status"));
				l.setInfo(rSet.getString("info"));
				l.setCarmoney(rSet.getInt("carmoney"));
				l.setHotelmoney(rSet.getInt("hotelmoney"));
				l.setFoodmoney(rSet.getInt("foodmoney"));
				l.setCarimg(rSet.getString("carimg"));
				l.setHotelimg(rSet.getString("hotelimg"));
				l.setFoodimg(rSet.getString("foodimg"));
				l.setReason(rSet.getString("reason"));
				l.setUsername(rSet.getString("username"));
				l.setDepartment(rSet.getString("department"));
				list.add(l);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public TravelList cheackApplication(int tno) {
		TravelList l = null;
		try {
			String sql = "select * from travel_list where tno=?";
			PreparedStatement pStatement = JDBC.executePreparedStatement(sql);
			pStatement.setInt(1, tno);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
				l = new TravelList();
				l.setTno(rSet.getInt("tno"));
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
				l.setDepartment(rSet.getString("department"));
				l.setReason(rSet.getString("reason"));
				l.setStatus(rSet.getInt("status"));
				l.setPurposes(rSet.getString("purposes"));
				return l;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}
	public Summary cheackSummary(int sno) {
		Summary l = null;
		try {
			String sql = "select * from summary where sno=?";
			PreparedStatement pStatement = JDBC.executePreparedStatement(sql);
			pStatement.setInt(1, sno);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
				l = new Summary();
				l.setTno(rSet.getInt("tno"));
				l.setSno(rSet.getInt("sno"));
				l.setStatus(rSet.getInt("status"));
				l.setRealexpense(rSet.getInt("realexpense"));
				l.setRealleavetime(rSet.getDate("realleavetime"));
				l.setRealbacktime(rSet.getDate("realbacktime"));
				l.setSummary(rSet.getString("summary"));
				l.setReason(rSet.getString("reason"));
				l.setUsername(rSet.getString("username"));
				l.setDepartment(rSet.getString("department"));
				return l;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}
	public Reimburse cheackReimburse(int rno) {
		Reimburse l = null;
		try {
			String sql = "select * from reimburse where rno=?";
			PreparedStatement pStatement = JDBC.executePreparedStatement(sql);
			pStatement.setInt(1, rno);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
				l = new Reimburse();
				l.setRno(rSet.getInt("rno"));
				l.setSno(rSet.getInt("sno"));
				l.setStatus(rSet.getInt("status"));
				l.setInfo(rSet.getString("info"));
				l.setCarmoney(rSet.getInt("carmoney"));
				l.setHotelmoney(rSet.getInt("hotelmoney"));
				l.setFoodmoney(rSet.getInt("foodmoney"));
				l.setCarimg(rSet.getString("carimg"));
				l.setHotelimg(rSet.getString("hotelimg"));
				l.setFoodimg(rSet.getString("foodimg"));
				l.setReason(rSet.getString("reason"));
				l.setUsername(rSet.getString("username"));
				l.setDepartment(rSet.getString("department"));
				return l;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;

	}
	
}

