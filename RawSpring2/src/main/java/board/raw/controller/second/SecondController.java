package board.raw.controller.second;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import board.raw.domain.TestDomain;

@Controller
@RequestMapping("/test/*")
public class SecondController {
	
	@Autowired
	@Qualifier("sqlSession")
	private SqlSession sqlSession;
	
	TestDomain td;
	
	@RequestMapping(value="test")
	public String test() {
		System.out.println("/test/test¿”");
		return ("/view/test/testtest.jsp");
	}
	
	@RequestMapping(value="read")
	public String tester() {
		td = sqlSession.selectOne("testMapper.tester");
		System.out.println(td);
		return null;
	}
	
}
