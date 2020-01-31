package board.raw.board.persistance;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import board.raw.domain.Board;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	@Qualifier("sqlSession")
	SqlSession sqlSession;

	@Override
	public List<Board> getBoardList() {
		return sqlSession.selectList("boardMapper.getBoardList");
	}

	@Override
	public int addBoard(Board board) {
		return sqlSession.insert("boardMapper.addBoard", board);
	}

	@Override
	public List<Board> getBoardListForModify() {
		return sqlSession.selectList("boardMapper.getBoardListForModify");
	}

}
