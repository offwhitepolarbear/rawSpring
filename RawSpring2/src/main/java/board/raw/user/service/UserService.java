package board.raw.user.service;

import board.raw.domain.User;

public interface UserService {
	public void addUser(User user);
	
	public User getUser(User user);
	
	public boolean updateUser(User user);
	
	public String findEmailByNameAndPhoneNumber(User user);
	
	public String findPassword(User user);
}
