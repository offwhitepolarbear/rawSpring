package board.raw.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import board.raw.article.service.ArticleService;
import board.raw.board.service.BoardService;
import board.raw.domain.Board;
import common.domain.ArticleSearch;
import common.domain.Search;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	@Qualifier ("boardServiceImpl")
	BoardService boardService;
	
	@Autowired
	@Qualifier ("articleServiceImpl")
	ArticleService articleService;
	
	@RequestMapping(value="addBoard",method = RequestMethod.GET)
	public String addBoardView() {
		return "/view/admin/addBoard.jsp";
	}
	
	@RequestMapping(value="modifyBoard",method = RequestMethod.GET)
	public String modifyBoardView() {
		return "/view/admin/modifyBoard.jsp";
	}
	
	@RequestMapping(value="modifyBoard",method = RequestMethod.POST)
	public String modifyBoard(@ModelAttribute List<Board> boards) {
		System.out.println("post");
		for(Board board : boards) {
			System.out.println(board);
		}
		
		return null;
	}
		
	@RequestMapping("{boardURL}")
	public String modifyBoard(@PathVariable String boardURL) {
		return "/view/board/getBoard.jsp";
	}
		
}
