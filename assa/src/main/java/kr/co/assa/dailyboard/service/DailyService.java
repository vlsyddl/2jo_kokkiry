package kr.co.assa.dailyboard.service;

import java.util.List;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;
import kr.co.assa.repository.domain.Recomm;

public interface DailyService {
	

	
	/**
	 * 게시판 수정.
	 * @param board
	 */
	void Dailyupdate(Board board);
	
	/**
	 * 게시판 목록가져오기
	 * @return
	 */
	List<Board> DailyList(int category);
	
	/**
	 * 게시물 상세정보
	 * @param no
	 * @return
	 */
	Board Dailydetail(int no);
	/**
	 * 게시물 삭제
	 * @param no
	 */
	void Dailydelete(int no);
	
	/**
	 * 게시물 등록
	 * @param board
	 */
	void dailyWrite(Board board);
	
	
	
	
	
	List<Comment> dailyComment(int boardNo);
	
	
	void commentWrite(Comment comment);
	int commentDelete(int commentNo);
	
	
	
	//추천
	int dailyRecCount(Recomm recomm);
	void dailyRecInsert(Recomm recomm);
	void dailyRecDel(Recomm recomm);
	
	

	
	
}
