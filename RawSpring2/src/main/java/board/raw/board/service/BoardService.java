package board.raw.board.service;

import java.util.List;

import board.raw.domain.Board;

public interface BoardService {
	
	public List<Board> getBoardList();
	
	public List<Board> getBoardListForModify();
	
	public int addBoard(Board board);

}
