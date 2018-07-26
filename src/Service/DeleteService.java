package Service;

import Dao.DeleteDao;

public class DeleteService {
	 public boolean deleteApplication(int tno) {
		 DeleteDao d=new DeleteDao();
		 return d.deleteApplication(tno);
	 }
	 public boolean deleteSummary(int sno) {
		 DeleteDao d=new DeleteDao();
		 return d.deleteSummary(sno);
	 }
	 public boolean deleteReimburse(int rno) {
		 DeleteDao d=new DeleteDao();
		 return d.deleteReimburse(rno);
	 }
}
