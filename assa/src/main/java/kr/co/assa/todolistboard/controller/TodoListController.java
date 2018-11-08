package kr.co.assa.todolistboard.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	List<TodoBoard> todo = service.selectTodoList(todoBoard);
	String checked = "";
	String notChecked = "";
	for(TodoBoard b : todo) {
		if (b.getTodoCheck() == "y") {
			 checked += b.getTodo();
		} else {
			notChecked += b.getTodo();
		}
		
	}
	String[] notC =  notChecked.split(",");
	String[] che =  checked.split(",");
	model.addAttribute("checked", che);
	model.addAttribute("notChecked", notC);

	
		return model;
	}
	

	
	
	@RequestMapping("/inputTodo.do")
	@ResponseBody
	public int writeTodoList(Board board, String todoLists, Model model) throws Exception{
		
		System.out.println("board"+board);
		System.out.println("todoLists"+todoLists);
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
		
		model.addAttribute("boardNo", boardNo);
		model.addAttribute("todoLists", service.selectTodoList(todoBoard));
		
		return boardNo;
	}
	// todo List
	@RequestMapping("/getTitleAndWriter.do")
	@ResponseBody
	public Board getTitleAndWriter(Integer data) throws Exception {
		System.out.println("getBoardNo: "+ data);
		
		return service.selectTitle(data); 
	}
	@RequestMapping("/getTodos.do")
	@ResponseBody
	public List<TodoList> getTodos(Integer data) throws Exception {
		System.out.println("getBoardNo: "+ data);
		
		return service.selectTodo(data); 
	}
	
}
