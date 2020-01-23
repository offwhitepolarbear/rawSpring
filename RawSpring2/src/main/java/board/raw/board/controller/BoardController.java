package board.raw.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import board.raw.board.service.BoardService;
import board.raw.domain.Board;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	@Qualifier ("boardServiceImpl")
	BoardService boardService;
	
	@RequestMapping("modifyBoard")
	public String modifyBoard() {
		return "/view/admin/modifyBoard.jsp";
	}
	
	public List<Board> getBoardList(){
		return boardService.getBoardList();
	}
	
	@RequestMapping("boardListTestr")
	public String testMethod() {
		List<Board> boardList = boardService.getBoardList();
		for(Board board : boardList) {
			System.out.println(board);
		}
		return "/";
	}
}
