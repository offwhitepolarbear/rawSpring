package board.raw.user.persistance;

import board.raw.domain.User;

public interface UserDAO {
	
	public void addUser(User user);
	
	public String getPasswordByEmail(User user);
	
	public User getUserForLogin(User user);
	
	public User getUser(String id);
	
	public int updateUser(User user);
	
	public String findEmailByNameAndPhoneNumber(User user);
	
	public String findPassword(User user);
}
