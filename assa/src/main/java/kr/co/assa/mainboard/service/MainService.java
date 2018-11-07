package kr.co.assa.mainboard.service;

import java.util.List;

public interface MainService {
	String lastStudyBoard();
	String lastDailyBoard();
	String lastDataBoard();
	int todayStudyBoard();
	int todayDailyBoard();
	int todayDataBoard();
	int todayTodoBoard();
	int totalStudyBoard();
	int totalDailyBoard();
	int totalDataBoard();
	int totalTodoBoard();
	List<String> miniCheckedTodo();
	List<String> miniNotCheckedTodo();
//	int checkedTodoCnt();
	int[] checkVisitor();
//	int[] preCheckTodoCnt();
//	int[] preTodoCnt();
	int[] selectCheckTodoCnt();
	int[] selectTotalTodoCnt();
}
