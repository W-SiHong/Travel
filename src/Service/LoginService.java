package Service;

import Bean.User;
import Dao.LoginDao;

public class LoginService {
public User validate(User u) {
	LoginDao ld=new LoginDao();
	return ld.validate(u);
	
}
}
