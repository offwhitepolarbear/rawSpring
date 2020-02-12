package board.raw.reply.persistance;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import board.raw.domain.Reply;
@Repository
public class ReplyDAOImpl implements ReplyDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int addReply(Reply reply) {
		return sqlSession.insert("replyMapper.addReply", reply);
	}

	@Override
	public List<Reply> getReplyList(int articleNo) {
		return sqlSession.selectList("replyMapper.getReplyList", articleNo);
	}

}
