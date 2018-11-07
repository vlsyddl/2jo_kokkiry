package kr.co.assa.repository.domain;

import lombok.Data;

@Data
public class Attach {
	private int no;
	private String fileName;
	private String filePath;
	private String oriName;
	private int fileNo;
}
