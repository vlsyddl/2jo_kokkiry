package kr.co.assa.mainboard.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.assa.mainboard.service.MainService;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@Autowired
	private MainService mainService;
	
 	@RequestMapping("/main.do")
	public void mainBoard() {}
	
	@RequestMapping("/lastBoard.json")
	@ResponseBody
	public Map<String, String> lastBoard() {
		Map<String, String> lastMap = new HashMap<>();
		lastMap.put("lastStudy", mainService.lastStudyBoard());
		lastMap.put("lastDaily", mainService.lastDailyBoard());
		lastMap.put("lastData", mainService.lastDataBoard());
		return lastMap;
	} // lastBoard method
	
	@RequestMapping("/countBoard.json")
	@ResponseBody
	public Map<String, Integer> countBoard() {
		Map<String, Integer> countMap = new HashMap<>();
		countMap.put("todayStudy", mainService.todayStudyBoard());
		countMap.put("todayDaily", mainService.todayDailyBoard());
		countMap.put("todayData", mainService.todayDataBoard());
		countMap.put("todayTodo", mainService.todayTodoBoard());
		countMap.put("totalStudy", mainService.totalStudyBoard());
		countMap.put("totalDaily", mainService.totalDailyBoard());
		countMap.put("totalData", mainService.totalDataBoard());
		countMap.put("totalTodo", mainService.totalTodoBoard());
		return countMap;
	} // countBoard method
	
	@RequestMapping("/miniCheckedTodo.json")
	@ResponseBody
	public List<String> miniCheckedTodo() {
		List<String> todoCheckedList = new ArrayList<>();
		todoCheckedList.addAll(mainService.miniCheckedTodo());
		return todoCheckedList;
	}
	
	@RequestMapping("/miniNotCheckedTodo.json")
	@ResponseBody
	public List<String> miniNotCheckedTodo() {
		List<String> todoNotCheckedList = new ArrayList<>();
		todoNotCheckedList.addAll(mainService.miniNotCheckedTodo());
		return todoNotCheckedList;
	}
	
	/*
	@RequestMapping("/checkedTodoCnt.json")
	@ResponseBody
	public int checkedTodoCnt() {
		return mainService.checkedTodoCnt();
	} // CheckedTodoCnt method
	*/
	
	@RequestMapping("/checkVisitor.json")
	@ResponseBody
	public Map<String, Integer> checkVisitor() {
		
		// 배열로 받은 값을 추출해야해...
		int[] visitCntArr = mainService.checkVisitor();
		
		Map<String, Integer> visitMap = new HashMap<>();
		visitMap.put("todayVititorCnt", visitCntArr[0]);
		visitMap.put("totalVititorCnt", visitCntArr[1]);
		
		return visitMap;
	} // checkVisitor method
	
	@RequestMapping("/chart.json")
	@ResponseBody
	public Map<String, Object> week() {
		Map<String, Object> chartMap = new HashMap<>();
		try {
			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.text.DateFormat format = new java.text.SimpleDateFormat("MM/dd");
			
			String[] dateArr = new String[7];
			for(int i = 6; i >= 0 ; i--) {
				dateArr[i] = format.format(cal.getTime());
				cal.add(cal.DATE, -1); // 7일(일주일)을 뺀다
			} // for
			chartMap.put("dateArr", dateArr);
			
			int[] preCheckTodoCnt = mainService.selectCheckTodoCnt();
			int[] preTodoCnt = mainService.selectTotalTodoCnt();
			
			int[] preCheckTodoArr = new int[7];
			for (int a = 0; a < preCheckTodoCnt.length; a++) {
				if (preCheckTodoCnt[a] == 0) {
					preCheckTodoArr[a] = 0;
				} else {
					preCheckTodoArr[a] = 100 / preTodoCnt[a];
				} // if-else
			} // for
			
			int[] preTodoArr = new int[7];
			for (int b = 0; b < preTodoCnt.length; b++) {
				if (preTodoCnt[b] == 0) {
					preTodoArr[b] = 0;
				} else {
					preTodoArr[b] = preCheckTodoArr[b] * preCheckTodoCnt[b];
				} // if-else
			} // for
			
			chartMap.put("preTodoArr", preTodoArr);
			
			return chartMap;
		} catch (Exception e) {
			e.printStackTrace();
		} // try-catch
		return chartMap;
		
	}
	
} // end class
