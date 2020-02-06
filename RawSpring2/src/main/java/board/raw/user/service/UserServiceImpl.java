package board.raw.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import board.raw.domain.User;
import board.raw.user.persistance.UserDAO;
import board.raw.user.persistance.UserDAOImpl;
import common.domain.Search;

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

	@Override
	public Map<String, Object> getUserList(Search search) {
		search.setOrderBy("id DESC");
		search.setSearchCondition("nickname");
		search.setSearchKeyword("밈");
		int totalcount = userDAOImpl.countUsersBySearchCondition(search);
		System.out.println(totalcount);
		List<User> userList = userDAOImpl.listUser(search);
		System.out.println("끝남"+userList.size());
		for(User user : userList) {
			System.out.println(user);
		}
		return null;
	}

}
