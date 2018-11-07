package kr.co.assa.dailyboard.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.assa.dailyboard.service.DailyService;
import kr.co.assa.repository.mapper.DailyMapper;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;
import kr.co.assa.repository.domain.Recomm;


@Controller("kr.co.assa.dailyboard.controller.DailyController")
@RequestMapping("/board")
public class DailyController {
	
	@Autowired
	private DailyService service;
	@Autowired
	private DailyMapper mapper;
	

	@RequestMapping(value="/daily.json")
	@ResponseBody
	public List<Board> dailyList(int category) {
		List<Board> list = new ArrayList<>();
		return service.DailyList(category);
	}
	
	@RequestMapping(value="/dailyComment.json")
	@ResponseBody
	public List<Comment> dailyComment(int boardNo) {
		
		return service.dailyComment(boardNo);
	}
	
	 
	@RequestMapping(value="/dailyCommentInsert.json")
	@ResponseBody
	public int commentWrite(Comment comment) {
		 service.commentWrite(comment);	
		 return comment.getBoardNo();
	}
	
	@RequestMapping(value="/dailyCommentdelete.json")
	@ResponseBody
	public int commentDelete(int commentNo) {
		return service.commentDelete(commentNo);
		
	}
	
	// /board/write.do
	@RequestMapping("/dailyWrite.json")
	@ResponseBody
	public void dailyWrite(Board board ) throws Exception {
		service.dailyWrite(board);
		 
	}
	
	
	// /board/delete.do
	@RequestMapping("/Dailydelete.json")
	@ResponseBody
	public void delete(int no) throws Exception {
		 service.Dailydelete(no);
	}
	
	
	@RequestMapping("/Dailyupdate.json")
	public void Dailyupdate(Board board) throws Exception {
		service.Dailyupdate(board);
	}
	
	// 추천

	@RequestMapping("/board/recInsert.json")
	public void insertRec(Recomm recomm) {
		 service.dailyRecInsert(recomm);
	}
	
	@RequestMapping("/board/recDelete.json")
	public int deleteRec(Recomm recomm) {
		return mapper.recCount(recomm);
	}
	@RequestMapping("/board/recount.json")
	public int recount(int no) {
		return mapper.rec(no);
	}

	
	
	
	//글쓰기
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping("/daily.json")
//	public void list(Model model) throws Exception {
//		model.addAttribute("list", service.DailyList());
//	}
//	
	
	
	
	
	
}









