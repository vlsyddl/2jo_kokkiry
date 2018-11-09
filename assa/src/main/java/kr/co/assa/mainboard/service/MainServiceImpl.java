package kr.co.assa.mainboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.assa.repository.mapper.MainMapper;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainMapper mainMapper;

	@Override
	public String lastStudyBoard() {
		return mainMapper.selectLastStudyBoard();
	} // lastStudyBoard method

	@Override
	public String lastDailyBoard() {
		return mainMapper.selectLastDailyBoard();
	} // lastDailyBoard method

	@Override
	public String lastDataBoard() {
		return mainMapper.selectLastDataBoard();
	} // lastDataBoard method

	@Override
	public int todayStudyBoard() {
		return mainMapper.selectTodayStudyBoard();
	}

	@Override
	public int todayDailyBoard() {
		return mainMapper.selectTodayDailyBoard();
	}

	@Override
	public int todayDataBoard() {
		return mainMapper.selectTodayDataBoard();
	}
	
	@Override
	public int todayTodoBoard() {
		return mainMapper.selectCheckedTodoCnt();
	}

	@Override
	public int totalStudyBoard() {
		return mainMapper.selectTotalStudyBoard();
	}

	@Override
	public int totalDailyBoard() {
		return mainMapper.selectTotalDailyBoard();
	}

	@Override
	public int totalDataBoard() {
		return mainMapper.selectTotalDataBoard();
	}
	
	@Override
	public int totalTodoBoard() {
		return mainMapper.selectTotalTodoCnt();
	}

	@Override
	public List<String> miniCheckedTodo() {
		return mainMapper.selectMiniCheckedTodo();
	}

	@Override
	public List<String> miniNotCheckedTodo() {
		return mainMapper.selectMiniNotCheckedTodo();
	}
	
	/*
	@Override
	public int checkedTodoCnt() {
		int total = 100 / mainMapper.selectTotalTodoCnt();
		int rate = mainMapper.selectCheckedTodoCnt() * total;
		
		return rate;
	}
	*/

	@Override
	public int[] checkVisitor() {
		Integer todayVisitor = mainMapper.selectTodayVisitCnt();
		if (todayVisitor == null) {
			mainMapper.insertVisitor();
		} else {
			mainMapper.updateVisitor();
		} // if-else
		todayVisitor = mainMapper.selectTodayVisitCnt();
		int totalVisitor = mainMapper.selectTotalVisitCnt();
		int[] visitCntArr = new int[2];
		visitCntArr[0] = todayVisitor;
		visitCntArr[1] = totalVisitor;
		return visitCntArr;
	}
	
//	public int[] preCheckTodoCnt() {
//		int[] preCheckArr = new int[7];
//		preCheckArr[0] = mainMapper.select6PreCheckTodoCnt();
//		preCheckArr[1] = mainMapper.select5PreCheckTodoCnt();
//		preCheckArr[2] = mainMapper.select4PreCheckTodoCnt();
//		preCheckArr[3] = mainMapper.select3PreCheckTodoCnt();
//		preCheckArr[4] = mainMapper.select2PreCheckTodoCnt();
//		preCheckArr[5] = mainMapper.select1PreCheckTodoCnt();
//		preCheckArr[6] = mainMapper.selectCheckedTodoCnt();
//		
//		return preCheckArr;
//	}
//
//	@Override
//	public int[] preTodoCnt() {
//		int[] preTodoArr = new int[7];
//		preTodoArr[0] = mainMapper.select6PreTodoCnt();
//		preTodoArr[1] = mainMapper.select5PreTodoCnt();
//		preTodoArr[2] = mainMapper.select4PreTodoCnt();
//		preTodoArr[3] = mainMapper.select3PreTodoCnt();
//		preTodoArr[4] = mainMapper.select2PreTodoCnt();
//		preTodoArr[5] = mainMapper.select1PreTodoCnt();
//		preTodoArr[6] = mainMapper.selectTotalTodoCnt();
//		
//		return preTodoArr;
//	}
	
	@Override
	public int[] selectCheckTodoCnt() {
		int[] preCheckArr = new int[7];
		
		for (int i = 0; i < preCheckArr.length; i++) {
			if (i == (preCheckArr.length - 1)) {
				preCheckArr[i] = mainMapper.selectCheckedTodoCnt();
			} else {
				preCheckArr[i] = mainMapper.selectCheckTodoCntpn((preCheckArr.length - (i+1)));
			} // if-else
		} // for
		return preCheckArr;
	}
	
	@Override
	public int[] selectTotalTodoCnt() {
		int[] preTodoArr = new int[7];		
		
		for (int i = 0; i < preTodoArr.length; i++) {
			if (i == (preTodoArr.length - 1)) {
				preTodoArr[i] = mainMapper.selectTotalTodoCnt();
			} else {
				preTodoArr[i] = mainMapper.selectTotalTodoCntpn((preTodoArr.length - (i+1)));
			} // if-else
		} // for
		return preTodoArr;
	}
	

} // end class
