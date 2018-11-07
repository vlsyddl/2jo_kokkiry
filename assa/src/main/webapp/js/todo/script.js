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
     //세션에 들어가있는 아이디랑 작성된 작성와 매칭이 안되면 disabled 걸린다. 
     
})
// TODOLIST 넣기 
 
	
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
 			getTodoList(data);
 		}
 	});
 	
 	
}
//function getNo(data){
//var no; 
//	for(var i = 0; i< data.length; i++){
//		no=data[0].no;
//	}
//	return no;
//	
//}



function getTodoList(data){
	for(var i = 0; i< data.length; i++){
		$(".todoAccordian").html(
				"<dl class='accWrap'>"
				+		"<dt>"
				+			data[i].title + "<span class='todo_id' name='todotitle'>"+data[i].writer+"</span>"
				+		"</dt>"		
				+"</dl>"
		);
		
	}
	// 글넘버로 호출 
//	todoList(data);
	
}


//function todoList(data){
//	var no
//	for(var i = 0; i< data.length; i++){
//		no=data[i].no 
//		console.log(no);
//	}
//	
//	$.ajax({
//		url:"/assa/todoList.do",
//		type:"POST",
//		data:{"no":no},
//		success: function(data){
// 			console.log(data);
// 		},
// 		error:function(request, status, error) {
//        console.log("status : " + request.status  + "error:" + error);
//       }
//
//
//	});
//}

