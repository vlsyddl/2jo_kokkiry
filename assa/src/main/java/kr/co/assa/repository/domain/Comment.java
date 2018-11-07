package kr.co.assa.repository.domain;

import lombok.Data;

@Data
public class Comment {	
	private int boardNo;
	private int commentNo;
	private String commentContent;
	private String commentWriter;
	private String commentRegDate;
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getCommentConent() {
		return commentContent;
	}
	public void setCommentConent(String commentConent) {
		this.commentContent = commentConent;
	}
	public String getCommentWriter() {
		return commentWriter;
	}
	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}
	public String getCommentRegDate() {
		return commentRegDate;
	}
	public void setCommentRegDate(String commentRegDate) {
		this.commentRegDate = commentRegDate;
	}
	@Override
	public String toString() {
		return "Comment [boardNo=" + boardNo + ", commentNo=" + commentNo + ", commentConent=" + commentContent
				+ ", commentWriter=" + commentWriter + ", commentRegDate=" + commentRegDate + "]";
	}
	
	
}
