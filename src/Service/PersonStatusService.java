package Service;

import java.util.List;

import Bean.Reimburse;
import Bean.Summary;
import Bean.TravelList;
import Dao.PersonStatusDao;

public class PersonStatusService {
	public List<TravelList> cheakApplicationStatus(String username) {
		PersonStatusDao ps=new PersonStatusDao();
		return ps.cheakApplicationStatus(username);
	}
	public List<Summary> cheakSummaryStatus(String username) {
		PersonStatusDao ps=new PersonStatusDao();
		return ps.cheakSummaryStatus(username);
	}
	public List<Reimburse> cheakReimburseStatus(String username) {
		PersonStatusDao ps=new PersonStatusDao();
		return ps.cheakReimburseStatus(username);
	}
	public TravelList cheackApplication(int tno) {
		PersonStatusDao ps=new PersonStatusDao();
		return ps.cheackApplication(tno);
	}
	public Summary cheackSummary(int sno) {
		PersonStatusDao ps=new PersonStatusDao();
		return ps.cheackSummary(sno);
	}
	public Reimburse cheackReimburse(int rno) {
		PersonStatusDao ps=new PersonStatusDao();
		return ps.cheackReimburse(rno);
	}
}
