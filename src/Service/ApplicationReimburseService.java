package Service;

import Bean.Reimburse;
import Dao.ApplicationReimburseDao;

public class ApplicationReimburseService {
   public boolean applicationReimburse(Reimburse re) {
	ApplicationReimburseDao ar=new ApplicationReimburseDao();
	return ar.applicationReimburse(re);
}
}
