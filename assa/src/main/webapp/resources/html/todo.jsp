<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="contents-wrap todo active">
<div class="profile">
	<div class="imgBox">
		<img src="/assa/resources/img/male-avatar.png" alt=""
			class="img-responsive center-block">
	</div>
	<div class="todoList">
		<ul class="notYet">
			<li></li>
		</ul>
		<ul class="complete">
		    <li></li>
		</ul>
	</div>
	 <div class="infoBox">
         <p class="info01">
             <span class="name">${member.nickname}</span>
         </p>
         <p class="info02">
             <span class="mail">${member.userEmail}</span>
         </p>
         <p class="info03">
              <a href="/mypage/logout.k" class="logout">Log out</a>
            <a href="#" data-toggle="modal" data-target="#signUpModal" id="mypage">My Page</a> 
         </p>
     </div>
</div>
<div class="items">
	<div class="itemsWrap">
		<form id="todoForm">
			<div class="formWrap">
				<div class="titleBox">
					<select name="todo_type" id="todo_type">
						<option value="1">타입</option>
						<option value="1">기획</option>
						<option value="1">Front</option>
						<option value="1">Back</option>
						<option value="1">Test</option>
					</select> 
					<input type="hidden" name="writer" value="${member.nickname}"> 
					<input type="text" name="title" id="todo_title">
				</div>
				<ul class="list_todo">

					<li><input class="inputTodo" type="text" name="todo" id="todo1"><a href="#" class="delTodo"	onclick="delTodo(1)">X</a></li>
				</ul>
				<div class="btnBox">
					<a href="#" class="addTodo">할일추가</a> 
					<a href="#" class="submitTodo">등록하기</a>
				</div>
			</div>
		</form>
		<!--  
		<div class="todoAccordian">
			<dl class="accWrap">
				<c:forEach var="todo" end="0" items="${todoBoard}">
					<dt>
						${todo.title} <span class="todo_id" name="todotitle">${todo.writer}</span>
					</dt>
				</c:forEach>
				<dd>
				<c:forEach var="todo"  items="${todoBoard}">
					<ul class="todoUl">
						<li> 
						<input type="hidden" value="${todo.no}"name="boardNo" />
						<input type="checkbox" value="${todo.todoCheck}" name="todoCheck" id="todoChk1">
						<label name="todoListTitle" for="todoChk1">${todo.todo}</label>
							</li>
						</ul>
						<a href="#" class="todo_modify">수정하기</a>
					</c:forEach>
					</dd>
				</dl> 
			</div> 
			-->
		</div>
	</div>
	<span class="chain chain01"></span> <span class="chain chain02"></span>
	<span class="chain chain03"></span> <span class="chain chain04"></span>
</div>
						<script>
						$(document).ready(function(){
							
							var todoCtn = 1;
						    var liHeight = $(".todoList li").innerHeight();
						    console.log(liHeight)
						     $(".addTodo").click(function(){
						         todoCtn++;
						         var li = '<li><input type="text" class="inputTodo" name="todo" id="todo'+todoCtn+'"><a href="#" class="delTodo" onclick="delTodo('+todoCtn+')">X</a></li>'
						         var list = $(".list_todo")
						         if(todoCtn > 5){
						             alert("할일은 5개 만 등록 가능합니다")
						             todoCtn = 5
						             return;
						         }
						         list.append(li)
						         $(".formWrap .btnBox").animate({"padding-top":"+="+liHeight},300)
						     })
						     function delTodo(no){
						         todoCtn--;
						         var li = $(".formWrap li").eq(no -1);
						         if(todoCtn < 1){
						             alert("할일은 1개 이상이여만 합니다.")
						             todoCtn = 1;
						             return
						         }
						         li.remove();
						         $(".formWrap .btnBox").animate({"padding-top":"-="+liHeight},300)
						     }
						     $("dl.accWrap dt").click(function(){
						         var wrap = $(this).parent()
						         if(wrap.hasClass("on")){
						            $("dl.accWrap").removeClass("on")
						            $("dl.accWrap dd").slideUp(300)
						         }else{
						            $("dl.accWrap").removeClass("on")
						            wrap.addClass("on")
						            $("dl.accWrap dd").slideUp(300)
						            $(this).siblings("dd").slideDown(300)
						         }
						     })
						     $("dl.accWrap.disabled").each(function(){
						         $(this).find("input[type=checkbox]").prop("disabled",true)
						     }) 
						     $("input:checkbox").on('click', function() { if ( $(this).prop('checked') ) { $(this).parent().addClass("selected"); } else { $(this).parent().removeClass("selected"); } });

						     // 세션에 들어가있는 아이디랑 작성된 작성와 매칭이 안되면 disabled 걸린다.

						    
						     
//						     var html ="";
//						 	$(" ul.complete ").html(html);
//						 	for(var i=0;i<result.length;i++){
//						 		html += "<li>"+result[i].todo+"</li>"
//						 	}
//						 	$("ul.notYet").html(html);
						})

						 var todoCtn = 1;
						    var liHeight = $(".todoList li").innerHeight();
						    console.log(liHeight)
						     $(".addTodo").click(function(){
						         todoCtn++;
						         var li = '<li><input type="text" class="inputTodo" name="todo" id="todo'+todoCtn+'"><a href="#" class="delTodo" onclick="delTodo('+todoCtn+')">X</a></li>'
						         var list = $(".list_todo")
						         if(todoCtn > 5){
						             alert("할일은 5개 만 등록 가능합니다")
						             todoCtn = 5
						             return;
						         }
						         list.append(li)
						         $(".formWrap .btnBox").animate({"padding-top":"+="+liHeight},300)
						     })
						     function delTodo(no){
						         todoCtn--;
						         var li = $(".formWrap li").eq(no -1);
						         if(todoCtn < 1){
						             alert("할일은 1개 이상이여만 합니다.")
						             todoCtn = 1;
						             return
						         }
						         li.remove();
						         $(".formWrap .btnBox").animate({"padding-top":"-="+liHeight},300)
						     }
						    
						     $("dl.accWrap.disabled").each(function(){
						         $(this).find("input[type=checkbox]").prop("disabled",true)
						     }) 
						     $("input:checkbox").on('click', function() { if ( $(this).prop('checked') ) { $(this).parent().addClass("selected"); } else { $(this).parent().removeClass("selected"); } });

							
						// TODOLIST insert 메소
						function insertTitle(){
							var todoLists = new Array();
							var title = $("input[id='todo_title']").val();
							var writer = $("input[name='writer']").val();
							
							$("input[name='todo']").each(function(){
								todoLists.push($(this).val()); 
								console.dir(todoLists.toString());
							});
							
							var board = {"title":title, "writer":writer, "todoLists":todoLists.join(",")};
							console.log(title,writer);
						 	$.ajax({
						 		url:"/assa/inputTodo.do",
						 		type:"POST",
						 		data: board,
						 		success: function(data){
						 			console.log(data);
						 			getTodoList(data);

						 		}
						 	});
						 	
						 	
						}

						function getProfileTodo(data){
							console.log(data)
							for(var i = 0; i< data.length; i++){
								$(".todoList ul").append(
											"<li>"+data[i].todo+"</li>"
								
								);
							}
						}

						function getTodoList(data){
							console.dir(data);
							$.ajax({
								url:"/assa/getTitleAndWriter.do",
								type:"POST",
								data: "data="+data
							}).done(function(result){
								getTodoTitle(result)
							});
							

						}
						function getTodoTitle(result){

							$(".itemsWrap").html(
									"<dl class='accWrap on'>"
									+		"<dt>"
									+			result.title + "<span class='todo_id' name='todotitle'>"+result.writer+"</span>"
									+		"</dt>"		
									+"</dl>"
									+"<dd style='display:display: block; background: #FED2C7; padding: 5px 10px; position: relative;'>"
									+"<ul class='todoUl'>"
									+"</ul>"
									+"</dd>"
							).trigger("create");
							getTodos(result.no);
						}

						function getTodos(data){
							$.ajax({
								url:"/assa/getTodos.do",
								type:"POST",
								data: "data="+data
							}).done(function(result){
								console.log(result);
								getTodo(result);
							});
						}

						function getTodo(result){
							for(var i=0;i<result.length;i++){
								console.log(result[i]);
								$("ul.todoUl").append(
										"<li> "
										+ "<input type='checkbox'value="+result[i].todoCheck+"name='todoCheck' id='todoChk"+i+"'>"
										+ "<label name='todoListTitle' for='todoChk"+i+"'>"+result[i].todo+"</label>"
										+"</li>"
										+"<a href='#' class='todo_modify'>수정하기</a>"
								).trigger("create");
								
							}
							
							var html ="";
							$(" ul.complete ").html(html);
							for(var i=0;i<result.length;i++){
								html += "<li>"+result[i].todo+"</li>"
							}
							$("ul.notYet").html(html);
							
						}

						</script>