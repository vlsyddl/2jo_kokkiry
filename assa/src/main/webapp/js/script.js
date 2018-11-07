$(document).ready(function(){
	$(".gnb li").click(function(e){
	    e.preventDefault();
	    $(".gnb li").removeClass("active")
	    $(this).addClass("active")
	    $(".contents-wrap").removeClass("active");
	    $("."+target).addClass("active")
	    var target = $(this).data("target");
	    $(".inner").html("")
	    $.ajax({
			url : "/assa/jsp/"+target+".html",
		}).done(function(data){
			$(".inner").html(data)
		})
	})
})