package kr.co.assa.studyboard.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.Comment;
import kr.co.assa.repository.domain.Attach;
import kr.co.assa.repository.domain.Page;
import kr.co.assa.repository.domain.PageResult;
import kr.co.assa.repository.domain.SearchForm;
import kr.co.assa.studyboard.service.BoardService;


@Controller("kr.co.assa.studyboard.controller.BoardController")
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService service;
	
	/**
	 * 스터디 게시판
	 * @param pageNo
	 * @param category
	 * @return listMap
	 */
	@RequestMapping(value="board_list.json")
	@ResponseBody
	public Map<String,Object> studyList(SearchForm form,int pageNo) {
		form.setPageNo(pageNo);
		System.out.println(form);
		HashMap<String, Object> listMap = new HashMap();
		List<Board> list = service.boardList(form);
		System.out.println(list.toString());
		listMap.put("list", list);
		listMap.put("pageResult",new PageResult(pageNo,service.selectBoardCount(form),10,5));
		
		return listMap;
	}
	
	
	/**
	 * 스터디 디테일
	 * @param no
	 * @return Board
	 */
	@RequestMapping(value="board_detail.json")
	@ResponseBody
	public HashMap<String,Object> studyDetail(int no) {
		HashMap<String, Object> listMap = new HashMap();
		service.updateBoardCnt(no);
		listMap.put("board", service.boardDetail(no));
		listMap.put("attachList",service.fileDetail(no));
		return listMap;
	}
	
	@RequestMapping(value="board_prev_next.json")
	@ResponseBody
	public int[] boardPrevNext(int no, int category) {
		
		return service.boardPrevNext(no, category);
	}
	/**
	 * 스터디 글쓰기
	 * @param board
	 */
	@RequestMapping("/board_write.json")
	@ResponseBody
	public int studyWrite(MultipartHttpServletRequest multi){
		System.out.println(multi.getParameter("title"));
		System.out.println(multi.getParameter("writer"));
		System.out.println(multi.getParameter("category"));
		System.out.println(multi.getParameter("content"));
        Board board = new Board();
        board.setTitle(multi.getParameter("title"));
        board.setWriter(multi.getParameter("writer"));
        board.setContent(multi.getParameter("content"));
        board.setCategory(Integer.parseInt(multi.getParameter("category")));
        
		service.boardWrite(board);
		int boardNo = board.getNo();
		
		// 저장 경로 설정
        String root = multi.getSession().getServletContext().getRealPath("/");
        String path =  root + "file" + File.separator;
        System.out.println("실제 파일 경로 : " +path);
        String newFileName = ""; // 업로드 되는 파일명
         
        File dir = new File(path);
        if(!dir.isDirectory()){
            dir.mkdir();
        }
        
        //파일 이름 찾기
        Iterator<String> files = multi.getFileNames();
        while(files.hasNext()){ //다음 파일 없을때 까지 반복
        	Attach attach = new Attach();
            
        	String uploadFile = files.next();
            
            MultipartFile mFile = multi.getFile(uploadFile);
            String fileName = mFile.getOriginalFilename();
            System.out.println("실제 파일 이름 : " +fileName);
            newFileName = System.currentTimeMillis()+"."
                    +fileName.substring(fileName.lastIndexOf(".")+1);
            
            attach.setOriName(fileName);
            attach.setNo(boardNo);
            attach.setFilePath(path);
            attach.setFileName(newFileName);
            System.out.println("attach : "+attach);
            service.fileWrite(attach);
            
            try {
                mFile.transferTo(new File(path+newFileName));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
		
		return board.getNo();
	}
	
	/**
	 * 댓글 리스트
	 * @param boardNo
	 * @return
	 */
	@RequestMapping("/comment_list.json")
	@ResponseBody
	public List<Comment> commentList(int boardNo){
		return service.commentList(boardNo);
	}
	
	/**
	 * 댓글 입력
	 * @param comment
	 * @return
	 */
	@RequestMapping("/comment_write.json")
	@ResponseBody
	public int studyCommentWrite(Comment comment){
		return service.commentWrite(comment);
	}
	
	/**
	 * 댓글 삭제
	 * @param commentNo
	 * @return
	 */
	@RequestMapping("/comment_delete.json")
	@ResponseBody
	public int studyCommentDelete(int commentNo){
		return service.deleteComment(commentNo);
	}

	/**
	 * 게시물 삭제
	 * @param no
	 * @return
	 */
	@RequestMapping("/board_delete.json")
	@ResponseBody
	public int deleteBoard(int no){
		return service.deleteBoard(no);
	}
	
	@RequestMapping("/board_update.json")
	@ResponseBody
	public int updateBoard(Board board) {
		service.updateBoard(board);
		return board.getNo();
	}
}
