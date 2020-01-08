package test;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import board.raw.domain.TestDomain;

@RunWith(SpringJUnit4ClassRunner.class)
public class SqlTest {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	TestDomain td;
	
	@Test
	public void test()throws Exception{
		
		td = sqlSession.selectOne("testMapper.read");
		System.out.println(td);
	}
}


