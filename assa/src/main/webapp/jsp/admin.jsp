<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ASSAWORLD - MAIN</title>
       <c:import url="/common/importCss.jsp"/>
    <c:import url="/common/importJs.jsp"/>
    <script type="text/javascript" src="<c:url value="/se2/js/HuskyEZCreator.js"/>" charset="utf-8"></script>
</head>
<body>
    <div id="wrap" class="main">
        <div class="containerWrap cf">
            <div class="container">
                <div class="contentsBody">
                    <div class="contents">
                        <div class="count">
                            TODAY <span class="today">0</span>
                            TOTAL <span class="total">0</span>
                        </div>
                        <div class="title">
                            <h3>ASSAWORLD</h3>
                        </div>
                        <div class="inner">
                        	<div class="contents-wrap admin active">
                                <ul>
                                    <li data-target=""><a href="#">회원정보</a></li>
                                    <li data-target=""><a href="#">진행사항</a></li>
                                    <li data-target=""><a href="#"></a></li>
                                    <li data-target=""><a href="#">회원정보</a></li>
                                </ul>
                        	</div>
						</div>
                        <div class="aside">
                            <ul class="gnb">
                                <li data-target="main"><a href="#">홈</a></li>
                                <li data-target="study" class="active"><a href="#">스터디</a></li>
                                <li data-target="daily"><a href="#">일상</a></li>
                                <li data-target="todo"><a href="#">오늘의 할일</a></li>
                                <li data-target="reference"><a href="#">자료실</a></li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            <div class="jukeBox">
                <h2>Juke Box</h2>
                <div class="infoBox">
                    <h3 class="title">삐삐</h3>
                    <h5 class="name">아이유</h5>
                </div>
                <div class="imgBox">
                    <img src="<c:url value="/img/jukeImg.jpg"/>" alt="" class="img-responsive center-block">
                </div>
                <audio id="audio" controls>
                    <source src="<c:url value="/media/밤편지.mp3"/>" type="audio/mpeg">
                    </audio>
                <div class="btnBox">
                    <a href="#" class="prev"><i class="fas fa-backward"></i></a>
                    <a href="#" class="play" ><i class="fas fa-play"></i></a>
                    <a href="#" class="pause"><i class="fas fa-pause"></i></a>
                    <a href="#" class="next" ><i class="fas fa-forward"></i></a>
                </div>
                <!-- <div class="listBox">
                    <a href="#" class="musicList">LIST</a>
                </div> -->
            </div>
             <div class="listBox">
                <ul>
                    <li class="on" data-name="아이유" data-file=""><a href="#">아이유 - 삐삐</a></li>
                    <li><a href="#">아이유 - 밤편지</a></li>
                </ul>    
            </div>
        </div>
    </div>
    <script>
          $(".play").click(function(){
              $("#audio")[0].play();
              $("#audio").addClass("on")
              $(".play").hide();
              $(".pause").show();
          })
          $(".pause").click(function(){
              $("#audio")[0].pause();
              $("#audio").removeClass("on")
              $(".pause").hide();
              $(".play").show();
          })
    </script>
    <script>
    	$(function(){
    		$.ajax({
    			url : "study.html",
    		}).done(function(data){
    			$(".inner").html(data)
    		})
    	})
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
    </script>
</body>
</html>