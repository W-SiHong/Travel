package Service;
import Bean.TravelList;
import Dao.TravelApplicationDao;
public class TravelApplicationService {
	public boolean travelapplication(TravelList list) {
		TravelApplicationDao listmanage=new TravelApplicationDao();
		return listmanage.travelapplication(list);
}
}
