package kr.co.assa.repository.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class Board {
	private int no;
	private String writer;
	private String title;
	private String content;
	private Date regDate;
	private int count;
	private int category;
}
