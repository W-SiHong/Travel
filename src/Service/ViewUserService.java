package Service;

import Bean.User;
import Dao.ViewUserDao;

public class ViewUserService {
	public User viewUser(String username) {
		ViewUserDao user=new ViewUserDao();
		return user.viewUser(username);
	}
}
