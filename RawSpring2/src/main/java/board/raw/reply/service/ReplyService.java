package board.raw.reply.service;

import java.util.List;

import board.raw.domain.Reply;

public interface ReplyService {
	
	public int addReply(Reply reply);

	public List<Reply> getReplyList(int articleNo);
	
}
