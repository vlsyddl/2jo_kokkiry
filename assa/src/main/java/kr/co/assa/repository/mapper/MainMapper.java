package kr.co.assa.repository.mapper;

import java.util.List;

import kr.co.assa.repository.domain.Todo;

public interface MainMapper {
	String selectLastStudyBoard();
	String selectLastDailyBoard();
	String selectLastDataBoard();
	int selectTodayStudyBoard();
	int selectTodayDailyBoard();
	int selectTodayDataBoard();
	int selectTotalStudyBoard();
	int selectTotalDailyBoard();
	int selectTotalDataBoard();
	List<String> selectMiniCheckedTodo();
	List<String> selectMiniNotCheckedTodo();
	int selectTotalTodoCnt();
	int selectCheckedTodoCnt();
	Integer selectTodayVisitCnt();
	int selectTotalVisitCnt();
	int insertVisitor();
	int updateVisitor();
	int selectCheckTodoCntpn(int no);
	int selectTotalTodoCntpn(int no);
} // end interface
