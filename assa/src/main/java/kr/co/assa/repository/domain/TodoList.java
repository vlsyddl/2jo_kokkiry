package kr.co.assa.repository.domain;

import java.util.List;

import lombok.Data;

@Data
public class TodoList {
	private int boardNo;
	private String todoNo;
	private String[] todoLists;
	private String todo;
	private String todoCheck;

}
