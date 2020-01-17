package board.raw.user.persistance;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
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

}
