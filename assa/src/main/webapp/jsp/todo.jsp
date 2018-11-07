<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>ASSAWORLD - MAIN</title>
<c:import url="/common/importCss.jsp" />
<c:import url="/common/importJs.jsp" />
<script src="<c:url value="/js/todo/script.js"/>"></script>
</head>
<body>
	<div id="wrap" class="main">
		<div class="containerWrap cf">
			<div class="container">
				<div class="contentsBody">
					<div class="contents">
						<div class="count">
							TODAY <span class="today">0</span> TOTAL <span class="total">0</span>
						</div>
						<div class="title">
							<h3>ASSAWORLD</h3>
						</div>
						<div class="contents-wrap todo active">
							<div class="profile">
								<div class="imgBox">
									<img src="img/male-avatar.png" alt=""
										class="img-responsive center-block">
								</div>
								<div class="todoList">
								<c:forEach var="todo" begin="" end="4" items="${todoBoard}"> 
									<ul>
										<li>${todo.todo}</li>
									</ul>
								</c:forEach>
								</div>
								<div class="infoBox">
									<p class="info01">
										<span class="name">이승재</span>
									</p>
									<p class="info02">
										<span class="mail">dltmdwo430@gmail.com</span>
									</p>
									<p class="info03">
										<a href="#" class="logout">Log out</a> <a href="#"
											class="mypage">My page</a>
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
												</select> <input type="hidden" name="writer" value="득득득"> <input
													type="text" name="title" id="todo_title">
											</div>
											<ul class="list_todo">

												<li><input class="inputTodo" type="text" name="todo"
													id="todo1"><a href="#" class="delTodo"
													onclick="delTodo(1)">X</a></li>
											</ul>
											<div class="btnBox">
												<a href="#" class="addTodo">할일추가</a> <a href="#"
													class="submitTodo">등록하기</a>
											</div>
										</div>
									</form>
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
													<li><input type="hidden" value="${todo.no}"
														name="boardNo" /> <input type="checkbox"
														value="${todo.todoCheck}" name="todoCheck" id="todoChk1">
														<label name="todoListTitle" for="todoChk1">${todo.todo}</label>
													</li>
												</ul>
												<a href="#" class="todo_modify">수정하기</a>
											</c:forEach>
											</dd>
										</dl> 
									</div> 

								</div>
							</div>
							<span class="chain chain01"></span> <span class="chain chain02"></span>
							<span class="chain chain03"></span> <span class="chain chain04"></span>
						</div>
						<div class="aside">
							<ul class="gnb">
								<li class="active"><a href="#">홈</a></li>
								<li><a href="#">스터디</a></li>
								<li><a href="#">일상</a></li>
								<li><a href="#">사진첩</a></li>
								<li><a href="#">오늘의 할일</a></li>
								<li><a href="#">자료실</a></li>
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
					<img src="<c:url value="/img/jukeImg.jpg"/>" alt=""
						class="img-responsive center-block">
				</div>
				<audio id="audio" controls> <source
					src="<c:url value="/media/music.mp3"/>" type="audio/mpeg"></audio>
				<div class="btnBox">
					<a href="#" class="prev"><i class="fas fa-backward"></i></a> <a
						href="#" class="play"><i class="fas fa-play"></i></a> <a href="#"
						class="pause"><i class="fas fa-pause"></i></a> <a href="#"
						class="next"><i class="fas fa-forward"></i></a>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(".submitTodo").click(function() {
			insertTitle();
			$("#todoForm").css({
				"display" : "none"
			});
		
		})
		$(".play").click(function() {
			$("#audio")[0].play();
			$("#audio").addClass("on")
			$(".play").hide();
			$(".pause").show();
		})
		$(".pause").click(function() {
			$("#audio")[0].pause();
			$("#audio").removeClass("on")
			$(".pause").hide();
			$(".play").show();
		})
	</script>
</body>
</html>