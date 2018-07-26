package Service;

import java.util.List;

import Bean.TravelList;
import Dao.ExamineApplicationDao;

public class ExamineApplicationService {
	public List<TravelList> examineAllList(int  n,String username) {
		ExamineApplicationDao list=new ExamineApplicationDao();
		return list.examineAllList(n,username) ;
	}
	public List<TravelList> examineAllList2(int  n) {
		ExamineApplicationDao list=new ExamineApplicationDao();
		return list.examineAllList2(n) ;
	}
}
