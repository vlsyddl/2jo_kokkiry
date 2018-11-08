package kr.co.assa.todolistboard.service;

import java.util.List;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.TodoBoard;
import kr.co.assa.repository.domain.TodoList;


/**
 * TodoList 비지니스 로직 처리 
 * @author suzie
 *
 */
public interface TodoListService {
	
	
	/**
	 * assa_todo 해당하는 테이블  불러오기 
	 * @param todoBoard
	 * @return
	 */
	List<TodoBoard> selectTodoList(TodoBoard todoBoard);
	
	/**
	 * Board의 SelectKey값 꺼내기
	 * @param board
	 * @return no값 
	 */
	int insertTitle(Board board);
	

	/**
	 * Todo insert 
	 * @param todoList
	 * @return
	 */
	void insertTodo(TodoList todoList);


	/**
	 * TodoList관련
	 * @param no
	 * @return
	 */
//	List<TodoBoard> selectTodoListByNo(int no);
	
	List<Board> selectBoard();
	
	//todo List
	Board selectTitle(Integer no);
	List<TodoList> selectTodo(Integer no); 
	
}
	
