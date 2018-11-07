package kr.co.assa.repository.mapper;

import java.util.List;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;

public interface DailyMapper {
	
	List<Board> selectDaily(int category);
	void insertDaily(Board board);
	Board selectDailyByNo(int no);
	void deleteDaily(int no);	
	int updateDaily(Board board);
	
//	 댓글
	List<Comment> selectComment(int boardNo);
	void insertComment(Comment comment);
    int deleteComment(int commentNo);
	
// 추천
	/*int rec(int no);
	int recCount(Recomm recomm);
	void insertRec(Recomm recomm);
	void deleteRec(Recomm recomm);
	*/
	
	
	
	

	
//	void updateComment(int no);
	
}
