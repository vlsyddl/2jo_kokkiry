package kr.co.assa.dailyboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;
import kr.co.assa.repository.domain.Recomm;
import kr.co.assa.repository.mapper.DailyMapper;

@Service
public class DailyServiceImpl implements DailyService{
	@Autowired
	private DailyMapper mapper;
	
	


	@Override
	public void Dailyupdate(Board board) {
		mapper.updateDaily(board);
	}

	@Override
	public List<Board> DailyList(int category) {
		return mapper.selectDaily(category);
	}

	@Override
	public Board Dailydetail(int no) {
		return mapper.selectDailyByNo(no);
	}

	@Override
	public void Dailydelete(int no) {
		 mapper.deleteDaily(no);
	}
	
	@Override
	public List<Comment> dailyComment(int boardNo) {
		return mapper.selectComment(boardNo);
	}
	
//	@Override
//	public List<Comment> dailyComment() {
//		return mapper.selectComment();
//		
//	}

	@Override
	public void dailyWrite(Board board) {
		 mapper.insertDaily(board);
	}

	/*@Override
	public int dailyRecCount(Recomm recomm) {
		
		return mapper.recCount(recomm);
	}

	@Override
	public void dailyRecInsert(Recomm recomm) {
		mapper.insertRec(recomm);
		
	}

	@Override
	public void dailyRecDel(Recomm recomm) {
		mapper.deleteRec(recomm);
		
	}*/

	@Override
	public void commentWrite(Comment comment) {
		 mapper.insertComment(comment);		
	}

	@Override
	public int commentDelete(int commentNo) {
		return mapper.deleteComment(commentNo);
	}

	@Override
	public int dailyRecCount(Recomm recomm) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void dailyRecInsert(Recomm recomm) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dailyRecDel(Recomm recomm) {
		// TODO Auto-generated method stub
		
	}



	
	

}
