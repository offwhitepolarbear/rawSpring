package board.raw.user.service;

import java.util.Map;

import board.raw.domain.User;
import common.domain.Search;

public interface UserService {
	public void addUser(User user);
	
	public User getUser(User user);
	
	public Map<String,Object> getUserList(Search search);
	
	public boolean updateUser(User user);
	
	public String findEmailByNameAndPhoneNumber(User user);
	
	public String findPassword(User user);
}
