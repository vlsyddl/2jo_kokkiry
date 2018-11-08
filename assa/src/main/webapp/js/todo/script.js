/**
 * 
 */
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
     // 세션에 들어가있는 아이디랑 작성된 작성와 매칭이 안되면 disabled 걸린다.

     
//     var html ="";
// 	$(" ul.complete ").html(html);
// 	for(var i=0;i<result.length;i++){
// 		html += "<li>"+result[i].todo+"</li>"
// 	}
// 	$("ul.notYet").html(html);
})

 
	
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
			"<dl class='accWrap'>"
			+		"<dt>"
			+			result.title + "<span class='todo_id' name='todotitle'>"+result.writer+"</span>"
			+		"</dt>"		
			+"</dl>"
			+"<dd>"
			+"<ul class='todoUl'>"
			+"</ul>"
			+"</dd>"
	);
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
		$(".todoUl").append(
				"<li> <input type='checkbox'"
				+				" value="+result[i].todoCheck+"name='todoCheck' id='todoChk"+i+"'>"
				+				"<label name='todoListTitle' for='todoChk"+i+"'>"+result[i].todo+"</label>"
				+			"</li>"
		);
		
	}
	var html ="";
	$(" ul.complete ").html(html);
	for(var i=0;i<result.length;i++){
		html += "<li>"+result[i].todo+"</li>"
	}
	$("ul.notYet").html(html);
	
}

