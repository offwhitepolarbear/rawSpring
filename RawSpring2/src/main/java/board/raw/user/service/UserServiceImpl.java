package board.raw.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import board.raw.domain.User;
import board.raw.user.persistance.UserDAO;
import board.raw.user.persistance.UserDAOImpl;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	@Qualifier("userDAOImpl")
	private UserDAO userDAOImpl;
	
	@Override
	public void addUser(User user) {
		userDAOImpl.addUser(user);
	}

	@Override
	public User getUser(User user) {
		// TODO Auto-generated method stub
		return userDAOImpl.getUserForLogin(user);
	}

	@Override
	public boolean updateUser(User user) {
		boolean isUpdated = false;
		if(userDAOImpl.updateUser(user)==1) {
			isUpdated=true;
		}
		return isUpdated;
	}

	@Override
	public String findEmailByNameAndPhoneNumber(User user) {
		return userDAOImpl.findEmailByNameAndPhoneNumber(user);
	}

	@Override
	public String findPassword(User user) {
		return userDAOImpl.findPassword(user);
	}

}
