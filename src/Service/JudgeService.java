package Service;

import Bean.TravelList;
import Dao.ExamineApplicationDao;

public class JudgeService {
	public boolean oncejudgeservice(TravelList list) {
	   ExamineApplicationDao ex= new ExamineApplicationDao();
         return   ex.oncejudge(list);
   }
	public boolean oncejudgeservice2(TravelList list) {
		   ExamineApplicationDao ex= new ExamineApplicationDao();
	         return   ex.oncejudge2(list);
	   }
	public boolean oncejudgeservice3(TravelList list) {
		   ExamineApplicationDao ex= new ExamineApplicationDao();
	         return   ex.oncejudge3(list);
	   }
}