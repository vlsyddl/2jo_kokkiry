package kr.co.assa.repository.mapper;

import java.util.List;

import kr.co.assa.repository.domain.Attach;
import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;
import kr.co.assa.repository.domain.Page;
import kr.co.assa.repository.domain.SearchForm;

public interface BoardMapper {
	int selectBoardCount(SearchForm form);
	List<Board> boardList(SearchForm form);
	Board boardDetail(int no);
	List<Attach> fileDetail(int no);
	int boardWrite(Board board);
	List<Comment> commentList(int boardNo);
	int fileWrite(Attach attach);
	int commentWrite(Comment comment);
	int deleteComment(int commentNo);
	int deleteBoard(int no);
	int updateBoardCnt(int no);
	int updateBoard(Board board);
	int[] boardPrevNext(int no, int category);
}
