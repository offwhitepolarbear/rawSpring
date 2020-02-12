package board.raw.reply.persistance;

import java.util.List;

import board.raw.domain.Reply;

public interface ReplyDAO {
	
	public int addReply(Reply reply);
	
	public List<Reply> getReplyList(int articleNo);
}
