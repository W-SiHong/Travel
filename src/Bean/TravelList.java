package Bean;
import java.sql.Date;

public class TravelList {
	
	private String username;
	private int tno;
	private String purposes;
	private int expense;
	private String destination;
	private Date leavetime;
	private Date backtime;
	private String type;
	private String plan;
	private String img;
	private int status;
	private String reason;
	private String num;
	private String telphone;
	private String department;

	public String getPurposes() {
		return purposes;
	}

	public void setPurposes(String purposes) {
		this.purposes = purposes;
	}

	public int getExpense() {
		return expense;
	}

	public void setExpense(int expense) {
		this.expense = expense;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Date getLeavetime() {
		return leavetime;
	}

	public void setLeavetime(Date leavetime) {
		this.leavetime = leavetime;
	}

	public Date getBacktime() {
		return backtime;
	}

	public void setBacktime(Date backtime) {
		this.backtime = backtime;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

}
