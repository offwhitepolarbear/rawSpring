package board.raw.board.persistance;

import java.util.List;

import board.raw.domain.Board;

public interface BoardDAO {
	
	public List<Board> getBoardList();
	
	public List<Board> getBoardListForModify();
	
	public int addBoard(Board board);
	
	public int getBoardIdByURL(String url);
}
