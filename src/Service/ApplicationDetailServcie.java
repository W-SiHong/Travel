package Service;

import Bean.TravelList;
import Dao.ExamineApplicationDao;

public class ApplicationDetailServcie {
   public TravelList examineOneList(int tno) {
	   ExamineApplicationDao ex=new ExamineApplicationDao();
	return  ex.examineOneList(tno);
}
}
