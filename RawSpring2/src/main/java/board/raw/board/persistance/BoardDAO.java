package board.raw.board.persistance;

import java.util.List;

import board.raw.domain.Board;

public interface BoardDAO {
	
	public List<Board> getBoardList();
	
	public int addBoard(Board board);
}
