package kr.co.assa.todolistboard.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.assa.repository.domain.Board;
import kr.co.assa.repository.domain.TodoBoard;
import kr.co.assa.repository.domain.TodoList;
import kr.co.assa.todolistboard.service.TodoListService;

@Controller

public class TodoListController {
	
	@Autowired
	private TodoListService service;
	
	@RequestMapping("/todo.do")
	@ResponseBody
	public Model todoList(TodoBoard todoBoard, Model model) throws Exception{
		
		model.addAttribute("todoBoard",service.selectTodoList(todoBoard));
		return model;
	}
	@RequestMapping("/todoList.do")
	@ResponseBody
	public List<TodoBoard> todoLists(int no) throws Exception{
		
		return service.selectTodoListByNo(no);
	}
	
	
	@RequestMapping("/inputTodo.do")
	@ResponseBody
	public List<TodoBoard> writeTodoList(Board board, String todoLists) throws Exception{
		TodoList todoList = new TodoList();
		TodoBoard todoBoard =new TodoBoard();
		// selectkey 꺼내기
		int boardNo = service.insertTitle(board);
		//글번호 셋팅
		todoList.setBoardNo(boardNo);
	
		//todoList에담아서  for문으로 todo꺼내면서 Insert시켜주기
		String[] todos = todoLists.split(",");
		for(int i=0; i<todos.length ; i++) {
			String todo = todos[i];
			todoList.setTodo(todo);
			service.insertTodo(todoList);
		}
	
		
		return service.selectTodoList(todoBoard);
	}
}
