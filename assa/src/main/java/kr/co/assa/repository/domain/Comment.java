package kr.co.assa.repository.domain;

import lombok.Data;

@Data
public class Comment {	
	private int boardNo;
	private int commentNo;
	private String commentContent;
	private String commentWriter;
	private String commentRegDate;
}
