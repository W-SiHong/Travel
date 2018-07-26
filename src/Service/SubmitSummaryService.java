package Service;

import java.util.List;

import Bean.Summary;
import Bean.User;
import Dao.SubmitSummaryDao;

public class SubmitSummaryService {
   public boolean submitSummary(Summary summary) {
	SubmitSummaryDao ss=new SubmitSummaryDao();
	return ss.submitSummary(summary);
}
   public List<Summary>  examineSummary(User user) {
		SubmitSummaryDao ss=new SubmitSummaryDao();
		return ss.examineSummary(user);
	}
   public Summary detailSummary(int sno) {
	SubmitSummaryDao ss=new SubmitSummaryDao();
	return ss.detailSummary(sno);
}
   public boolean judge(Summary s) {
	   SubmitSummaryDao ss=new SubmitSummaryDao();
	   return ss.judge(s);
}
   public boolean judge2(Summary s) {
	   SubmitSummaryDao ss=new SubmitSummaryDao();
	   return ss.judge2(s);
}
}
