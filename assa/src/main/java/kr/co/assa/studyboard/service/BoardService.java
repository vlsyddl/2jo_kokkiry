package kr.co.assa.studyboard.service;

import java.util.List;

import kr.co.assa.repository.domain.Attach;
import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;
import kr.co.assa.repository.domain.Page;
import kr.co.assa.repository.domain.Recomm;
import kr.co.assa.repository.domain.SearchForm;

public interface BoardService {
	List<Board> boardList(SearchForm form);
	int selectBoardCount(SearchForm form);
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
	int insertRecomm(Recomm recomm);
	int deleteRecomm(Recomm recomm);
	Recomm selectRecomm(Recomm recomm);
}
