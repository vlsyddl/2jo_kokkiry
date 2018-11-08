package kr.co.assa.todolistboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.TodoBoard;
import kr.co.assa.repository.domain.TodoList;
import kr.co.assa.repository.mapper.TodoListMapper;

@Service
public class TodoListServiceImpl implements TodoListService{
	@Autowired
	private TodoListMapper mapper;




	@Override
	public List<TodoBoard> selectTodoList(TodoBoard todoBoard) {
		return mapper.selectTodoList(todoBoard);
		
	}

	// board.getNo() board - writer랑 title을 먼저 넣어준다.
	@Override
	public int insertTitle(Board board) {
		mapper.insertTitle(board);
		System.out.println(board.getNo());
		return board.getNo();
	}


	@Override
	public void insertTodo(TodoList todoList) {
		mapper.insertTodo(todoList);
	}



	@Override
	public List<Board> selectBoard() {
		
		return mapper.selectBoard();
	}

	//todo list
	@Override
	public Board selectTitle(Integer no) {
		
		return mapper.selectTitle(no);
	}

	@Override
	public List<TodoList> selectTodo(Integer no) {
		
		return mapper.selectTodo(no);
	}

	


	
	
	
}
