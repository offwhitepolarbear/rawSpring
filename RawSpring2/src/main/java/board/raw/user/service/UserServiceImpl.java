package board.raw.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import board.raw.domain.User;
import board.raw.user.persistance.UserDAO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	@Qualifier("userDAOImpl")
	private UserDAO userDAOImpl;
	
	@Override
	public void addUser(User user) {
		userDAOImpl.addUser(user);
	}

}
