/**
 * 
 */
$(document).ready(function(){
	
	/*$(function(){
		$.ajax({
			리스트 구축
		})
	})*/

	
	
	var todoCtn = 1;
    var liHeight = $(".todoList li").innerHeight();
    console.log(liHeight)
     $(".addTodo").click(function(){
         todoCtn++;
         var li = '<li><input type="text" name="todo'+todoCtn+'" id="todo'+todoCtn+'"><a href="#" class="delTodo" onclick="delTodo('+todoCtn+')">X</a></li>'
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
})