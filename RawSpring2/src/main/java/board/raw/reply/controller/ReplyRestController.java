package board.raw.reply.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import board.raw.domain.Reply;
import board.raw.domain.User;
import board.raw.reply.service.ReplyService;

@RestController
@RequestMapping("/reply/rest/*")
public class ReplyRestController {
	@Autowired
	@Qualifier("replyServiceImpl")
	private ReplyService replyService;
	
	@RequestMapping("addReply")
	public String addReply(@RequestBody Reply reply, HttpSession session) {
		User user = (User)session.getAttribute("user");
		int userId = user.getId();
		reply.setUserId(userId);
		replyService.addReply(reply);
		return null;
	}
	
	@RequestMapping("getReplys/{articleNo}")
	public List<Reply> getReplys(@PathVariable int articleNo) {
		return replyService.getReplyList(articleNo);
	}
}
