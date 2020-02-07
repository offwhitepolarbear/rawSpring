package board.raw.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import board.raw.domain.User;
import board.raw.user.persistance.UserDAO;
import board.raw.user.persistance.UserDAOImpl;
import common.domain.Page;
import common.domain.Search;

@Service
public class UserServiceImpl implements UserService{
	
	@Value("#{pageProperties['pageNavigationSize']}")
	int pageNavigationSize;
	
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
		System.out.println(search.getContentsPerPage());
		int totalcount = userDAOImpl.countUsersBySearchCondition(search);
		Page page = new Page.Builder()
				.totalSize(totalcount)
				.pageNavigationSize(pageNavigationSize)
				.contentSizePerPage(search.getContentsPerPage())
				.recentPage(search.getCurrentPage())
				.build();
		List<User> userList = userDAOImpl.listUser(search);
		Map<String, Object> userMap = new HashMap<String, Object>();
		userMap.put("userList", userList);
		userMap.put("page", page);
		return userMap;
	}

}
