package board.raw.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@RequestMapping("getBoardList")
	public String getBoardList() {
		return "/view/admin/modifyBoard.jsp";
		
	}
}
