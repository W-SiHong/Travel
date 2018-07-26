package Service;

import java.util.List;

import Bean.Summary;
import Bean.TravelList;
import Dao.PersonStatusDao;
import Dao.SummaryPassDao;

public class SummaryPassService {
	public List<Summary> summaryPass(String username) {
		SummaryPassDao sp = new SummaryPassDao();
		return sp.summaryPass(username);
	}

	public List<TravelList> applicationPass(String username) {
		PersonStatusDao sp = new PersonStatusDao();
		return sp.applicationPass(username);
	}
}
