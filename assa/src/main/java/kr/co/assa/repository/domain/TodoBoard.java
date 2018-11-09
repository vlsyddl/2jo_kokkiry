package kr.co.assa.repository.domain;

import java.util.Date;

import lombok.Data;

@Data
public class TodoBoard {

	private int no;
	private String title;
	private String todo;
	private Date regDate;
	private String writer;
	private String todoCheck;
	
	//
}
