package kr.co.assa.repository.mapper;

import java.util.List;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.TodoBoard;
import kr.co.assa.repository.domain.TodoList;

public interface TodoListMapper {
	// todo 목록 불러오기 
	
	Board selectTodoTitle(Integer boardNo);
	
	List<TodoBoard> selectTodoList(TodoBoard todoBoard);

	
	List<Board> selectBoard();
	
	// list
	Board selectTitle(Integer no);
	List<TodoList> selectTodo(Integer no); 
	
	//insert
	int insertTitle(Board board);// board no값 받아오기
	void insertTodo(TodoList todoList); //todo Insert
}
