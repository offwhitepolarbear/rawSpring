package board.raw.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import board.raw.board.service.BoardService;
import board.raw.domain.Board;

@RestController
@RequestMapping("/board/rest/*")
public class BoardRestController {
	@Autowired
	@Qualifier("boardServiceImpl")
	BoardService boardService;
	
	@RequestMapping("getBoardList")
	public List<Board> getBoardList() {
		List<Board> boardList = boardService.getBoardList();
		return boardList;
	}
	
	@RequestMapping("getBoardInformations")
	public List<Board> getModifiedBoardInformations(@RequestBody List<Board> boardList) {
		for(Board board : boardList) {
			System.out.println(board);
		}
		return boardList;
	}
	
}
