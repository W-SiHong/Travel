package Service;

import java.util.List;

import Bean.Reimburse;
import Bean.User;
import Dao.ExamineReimburseDao;

public class ExamineReimburseService {
	
	public List<Reimburse> examineReimburse(User user){
		ExamineReimburseDao er=new ExamineReimburseDao();
		return er.examineReimburse(user);
	}
	public List<Reimburse> examineReimburse2(){
		ExamineReimburseDao er=new ExamineReimburseDao();
		return er.examineReimburse2();
	}
	public Reimburse detailReimburse(int rno){
		ExamineReimburseDao er=new ExamineReimburseDao();
		return er.detailReimburse(rno);
	}
	public  boolean judge(Reimburse s) {
		ExamineReimburseDao er=new ExamineReimburseDao();
		return er.judge(s);
	}
}
