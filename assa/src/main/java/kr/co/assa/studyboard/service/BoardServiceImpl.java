package kr.co.assa.studyboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.assa.repository.domain.Attach;
import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;
import kr.co.assa.repository.domain.SearchForm;
import kr.co.assa.repository.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardMapper mapper; 
	
	@Override
	public List<Board> boardList(SearchForm form) {
		return mapper.boardList(form);
	}

	@Override
	public int selectBoardCount(SearchForm form) {
		return mapper.selectBoardCount(form);
	}

	@Override
	public Board boardDetail(int no) {
		// TODO Auto-generated method stub
		return mapper.boardDetail(no);
	}

	@Override
	public int boardWrite(Board board) {
		// TODO Auto-generated method stub
		return mapper.boardWrite(board);
	}

	@Override
	public List<Comment> commentList(int boardNo) {
		// TODO Auto-generated method stub
		return mapper.commentList(boardNo);
	}

	@Override
	public int fileWrite(Attach attach) {
		// TODO Auto-generated method stub
		return mapper.fileWrite(attach);
	}

	@Override
	public List<Attach> fileDetail(int no) {
		// TODO Auto-generated method stub
		return mapper.fileDetail(no);
	}

	@Override
	public int commentWrite(Comment comment) {
		// TODO Auto-generated method stub
		return mapper.commentWrite(comment);
	}

	@Override
	public int deleteComment(int commentNo) {
		// TODO Auto-generated method stub
		return mapper.deleteComment(commentNo);
	}

	@Override
	public int deleteBoard(int no) {
		// TODO Auto-generated method stub
		return mapper.deleteBoard(no);
	}

	@Override
	public int updateBoardCnt(int no) {
		// TODO Auto-generated method stub
		return mapper.updateBoardCnt(no);
	}

	@Override
	public int updateBoard(Board board) {
		// TODO Auto-generated method stub
		return mapper.updateBoard(board);
	}

	@Override
	public int[] boardPrevNext(int no, int category) {
		// TODO Auto-generated method stub
		return mapper.boardPrevNext(no, category);
	}

}
