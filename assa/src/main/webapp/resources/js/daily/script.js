/**
 * 
 */
$(document).ready(function(){
	
	/*$(function(){
		$.ajax({
			리스트 구축
		})
	})*/
	
	$(".dailyWrite").click(function(){
		//여기에 ajax 구축
		$(".contents-wrap").removeClass("active")
		$(".contents-wrap.daily-write").addClass("active")
	})
})