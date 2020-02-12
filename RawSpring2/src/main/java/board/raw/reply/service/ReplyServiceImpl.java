package board.raw.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import board.raw.domain.Reply;
import board.raw.reply.persistance.ReplyDAO;
@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	@Qualifier("replyDAOImpl")
	private ReplyDAO replyDAO;
	
	@Override
	public int addReply(Reply reply) {
		return replyDAO.addReply(reply);
	}
	
	@Override
	public List<Reply> getReplyList(int articleNo) {
		return replyDAO.getReplyList(articleNo);
	}



}
