package Bean;

import java.sql.Date;

public class Summary {

	private String username;
	private String department;
	private int sno;
	private int tno;
	private Date realleavetime;
	private Date realbacktime;
	private int realexpense;
	private String summary;
	private int status;
	private String reason;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public Date getRealleavetime() {
		return realleavetime;
	}
	public void setRealleavetime(Date realleavetime) {
		this.realleavetime = realleavetime;
	}
	public Date getRealbacktime() {
		return realbacktime;
	}
	public void setRealbacktime(Date realbacktime) {
		this.realbacktime = realbacktime;
	}
	public int getRealexpense() {
		return realexpense;
	}
	public void setRealexpense(int realexpense) {
		this.realexpense = realexpense;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
}
