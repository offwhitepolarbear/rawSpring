package board.raw.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import board.raw.board.persistance.BoardDAO;
import board.raw.domain.Board;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	@Qualifier("boardDAOImpl")
	BoardDAO boardDAOImpl;
		
	@Override
	public List<Board> getBoardList() {
		return boardDAOImpl.getBoardList();
	}

	@Override
	public int addBoard(Board board) {
		// TODO Auto-generated method stub
		return boardDAOImpl.addBoard(board);
	}

}
