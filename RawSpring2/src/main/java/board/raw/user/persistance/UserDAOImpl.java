package board.raw.user.persistance;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import board.raw.domain.User;

@Repository
public class UserDAOImpl implements UserDAO{

	@Autowired
	@Qualifier("sqlSession")
	private SqlSession sqlSession;
	
	@Override
	public void addUser(User user) {
		sqlSession.insert("userMapper.addUser", user);
	}

	@Override
	public String getPasswordByEmail(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserForLogin(User user) {
		return sqlSession.selectOne("userMapper.getUserForLogin", user);
	}

	@Override
	public User getUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateUser(User user) {
		return sqlSession.update("userMapper.updateUser", user);
	}

	@Override
	public String findEmailByNameAndPhoneNumber(User user) {
		return sqlSession.selectOne("userMapper.findEmail", user);
	}

	@Override
	public String findPassword(User user) {
		return sqlSession.selectOne("userMapper.findPassword", user);
	}

}
