$(document).ready(function(){
	$(".gnb li").click(function(e){
	    e.preventDefault();
	    var target = $(this).data("target");
	    $(".gnb li").removeClass("active")
	    $(this).addClass("active")
	    $(".contents-wrap").removeClass("active");
	    $("."+target).addClass("active")
	})
})