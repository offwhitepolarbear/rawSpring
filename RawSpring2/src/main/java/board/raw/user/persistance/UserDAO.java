package board.raw.user.persistance;

import java.util.List;

import board.raw.domain.User;
import common.domain.Search;

public interface UserDAO {

	public void addUser(User user);

	public String getPasswordByEmail(User user);

	public User getUserForLogin(User user);

	public User getUser(String id);

	public int updateUser(User user);

	public String findEmailByNameAndPhoneNumber(User user);

	public String findPassword(User user);

	public int countUsersBySearchCondition(Search search);

	public List<User> listUser(Search search);
}
