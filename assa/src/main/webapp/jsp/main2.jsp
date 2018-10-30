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
   
</head>
<body>
    <div id="wrap">
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
                        <!-- end main -->
                        <div class="contents-wrap main active">
                        	 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
                            <div class="profile">
                                <div class="imgBox">
                                    <img src="<c:url value="/img/male-avatar.png"/>" alt="" class="img-responsive center-block">
                                </div>
                                <div class="todoList">
                                    <ul>
                                        <li class="complete">할일 1</li>
                                        <li class="complete">할일 2</li>
                                        <li>할일 3</li>
                                        <li>할일 4</li>
                                    </ul>
                                </div>
                                <div class="infoBox">
                                    <p class="info01">
                                        <span class="name">이승재</span>
                                    </p>
                                    <p class="info02">
                                        <span class="mail">dltmdwo430@gmail.com</span>
                                    </p>
                                    <p class="info03">
                                        <a href="#" class="logout">Log out</a>
                                        <a href="#" class="mypage">My page</a>
                                    </p>
                                </div>
                            </div>
                            <div class="items ">
                                <div class="itemsWrap">
                                    <div class="latest cf">
                                        <h6>최근 게시물</h6>
                                        <div class="latest01">
                                            <ul>
                                                <li><a href="#"><span class="type study">스터디</span> 스터디 게시물</a></li>
                                                <li><a href="#"><span class="type daily">일상</span> 일상 게시물</a></li>
                                                <li><a href="#"><span class="type gallery">사진첩</span> 사진첩 게시물</a></li>
                                                <li><a href="#"><span class="type archive">자료실</span> 자료실 게시물</a></li>
                                            </ul>
                                        </div>
                                        <div class="latest02">
                                            <ul>
                                                <li><a href="#">스터디 <span class="latestCount"><span class="new">3</span> / <span class="total">50</span></span></a></li>
                                                <li><a href="#">일상 <span class="latestCount"><span class="new">3</span> / <span class="total">50</span></span></a></li>
                                                <li><a href="#">사진첩 <span class="latestCount"><span class="new">3</span> / <span class="total">50</span></span></a></li>
                                                <li><a href="#">오늘의 할일 <span class="latestCount"><span class="new">3</span> / <span class="total">50</span></span></a></li>
                                                <li><a href="#">자료실 <span class="latestCount"><span class="new">3</span> / <span class="total">50</span></span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="graph cf">
                                        <canvas id="myChart"></canvas>
                                        <canvas id="myChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                            <span class="chain chain01"></span>
	                        <span class="chain chain02"></span>
	                        <span class="chain chain03"></span>
	                        <span class="chain chain04"></span>
                        </div>
                        <script>
                            var chart1 = document.getElementById("myChart");

                            var options ={
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero:true
                                        }
                                    }]
                                },
                                legend:{
                                    position:'bottom'
                                }
                            };
                            var dataHospital = {
                                labels: ["10/15","10/16","10/17","10/18","10/19","10/20","10/21","10/22","10/23","10/24"],
                                datasets: [
                                    {
                                        label: "사용자1",
                                        fill: false,
                                        lineTension: 0,
                                        borderColor: "rgba(255, 19, 56, 0.65)",
                                        data: [100,80,92,57,61,99,60,88,90,87],
                                    },
                                    {
                                        label: "사용자2",
                                        fill: false,
                                        lineTension: 0,
                                        borderColor: "rgba(61,155,74,0.65)",
                                        data: [66,15,100,98,45,99,78,42,65,88],
                                    },
                                    {
                                        label: "사용자3",
                                        fill: false,
                                        lineTension: 0,
                                        borderColor: "rgba(54,127,247,0.65)",
                                        data: [70,56,72,87,91,45,25,35,58,97],
                                    },
                                    {
                                        label: "사용자4",
                                        fill: false,
                                        lineTension: 0,
                                        backgroundColor: "rgba(22,65,78,0.65)",
                                        data: [70,56,72,87,91,45,25,35,58,97],
                                    },
                                ],
                                options: {
                                    scales: {
                                        yAxes: [{
                                            stacked: true
                                        }]
                                    }
                                }
                            };

                            var hospitalChar = new Chart(chart1, {
                                type: 'line',
                                data: dataHospital,
                                options: options

                            });
                            var chart2 = document.getElementById("myChart2");

                            var options ={
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero:true
                                        }
                                    }]
                                },
                                legend:{
                                    position:'bottom'
                                }
                            };
                            var dataHospital2 = {
                                labels: ["기획","Front","Back","Test"],
                                datasets: [
                                    {
                                        label: "사용자1",
                                        fill: true,
                                        backgroundColor: "rgba(255, 19, 56, 0.65)",
                                        data: [100,50,16,25],
                                    },
                                    {
                                        label: "사용자2",
                                        fill: true,
                                        backgroundColor: "rgba(61,155,74,0.65)",
                                        data: [100,50,60,34],
                                    },
                                    {
                                        label: "사용자3",
                                        fill: true,
                                        backgroundColor: "rgba(54,127,247,0.65)",
                                        data: [100,50,56,14],
                                    },
                                    {
                                        label: "사용자4",
                                        fill: true,
                                        backgroundColor: "rgba(22,65,78,0.65)",
                                        data: [100,50,20,30],
                                    },
                                ],
                                options: {
                                    scales: {
                                        yAxes: [{
                                            stacked: true
                                        }]
                                    }
                                }
                            };

                            var hospitalChar2 = new Chart(chart2, {
                                type: 'bar',
                                data: dataHospital2,
                                options: options

                            });
                        </script>
                        <!-- end main -->
                        <!-- study -->
                        <div class="contents-wrap study">
							<div class="items">
	                            <div class="itemsWrap">
	                               <!-- 컨텐츠 삽입부분 -->
	                               <h2 class="contentsTitle">스터디</h2>
	                               <table class="table list">
	                                   <thead>
	                                       <tr>
	                                           <th>글번호</th>
	                                           <th>글제목</th>
	                                           <th>글쓴이</th>
	                                           <th>조회수</th>
	                                           <th>등록일</th>
	                                       </tr>
	                                   </thead>
	                                   <tbody>
	                                       <tr>
	                                           <td>10</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>9</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>8</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>7</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>6</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>5</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>4</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>3</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>2</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>1</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                   </tbody>
	                               </table>
	                               <a href="#" class="writeBtn">글쓰기</a>
	                               <nav class="text-center">
									  <ul class="pagination">
									    <li>
									      <a href="#" aria-label="Previous">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
									    </li>
									    <li class="active"><a href="#">1</a></li>
									    <li><a href="#">2</a></li>
									    <li><a href="#">3</a></li>
									    <li><a href="#">4</a></li>
									    <li><a href="#">5</a></li>
									    <li>
									      <a href="#" aria-label="Next">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
									    </li>
									  </ul>
	                                </nav>
	                                 <div class="searchWrap">
	                                 	 <form action="" id="search">
	                                      <select class="form-control" >
	                                          <option value="title">제목</option>
	                                          <option value="writer">글쓴이</option>
	                                      </select>
	                                      <input type="text" class="form-control" placeholder="Search for...">
	                                      <span class="input-group-btn">
	                                        <button class="btn btn-default" type="button"><i class="fas fa-search"></i></button>
	                                      </span>
	                                      </form>
	                                       
	                                 </div>
	                               	
                                </div>
                
	                        </div>
                        </div>
                        <!-- end study -->
                        <!-- daily -->
                        <div class="contents-wrap daily">
                            <div class="items">
                                <div class="itemsWrap">
                                   <!-- 컨텐츠 삽입부분 -->
                                   <h2 class="contentsTitle">일상 <a href="#" class="dailyWrite">글쓰기</a></h2>
                                   <ul class="dailyList">
                                       <li>
                                           <div class="dailyBox">
                                               <div class="dailyHead">
                                                   <div class="titleBox">
                                                        자바란 무엇인가....너무어렵구만....
                                                   </div>
                                                   <div class="infoBox">
                                                       <span class="name">임유신</span>
                                                       <span class="date">2018-10-22</span>
                                                   </div>
                                               </div>
                                               <div class="dailyBody">
                                                   <img src="<c:url value="/img/test.jpg" />" alt="">
                                                   <img src="<c:url value="/img/test2.png" />" alt="">
                                               </div>
                                               <div class="dalyFooter">
                                                  <div class="likeBox">
                                                    <a href="#" class="like">
                                                        <i class="far fa-thumbs-up"></i>
                                                        좋아요 n개
                                                    </a>
                                                    <span class="commNum">
                                                        댓글 n개
                                                    </span>
                                                </div>
                                                <div class="commentForm">
                                                    <form action="" id="commentForm">
                                                        <textarea name="commentInput" id="commentInput" cols="30" rows="5" class="form-control"></textarea>
                                                        <a href="#" id="commentFormBtn">댓글 남기기</a>
                                                    </form>
                                                </div>
                                                <ul class="commentList">
                                                    <li>
                                                         <div class="commentBox">
                                                             <div class="commentHead">
                                                                 <div class="infoBox">
                                                                     <dl>
                                                                         <dt class="name">xman</dt>
                                                                         <dd>2018.10.01 22:14:32</dd>
                                                                     </dl>
                                                                 </div>
                                                                 <div class="btnBox">
                                                                         <a href="#">수정</a>
                                                                         |
                                                                         <a href="#">삭제</a>
                                                                 </div>
                                                             </div>
                                                             <div class="commentBody">
                                                                     정말 유익한 내용입니다.
                                                             </div>
                                                         </div>
                                                    </li>
                                                    <li>
                                                         <div class="commentBox">
                                                             <div class="commentHead">
                                                                 <div class="infoBox">
                                                                     <dl>
                                                                         <dt class="name">xman</dt>
                                                                         <dd>2018.10.01 22:14:32</dd>
                                                                     </dl>
                                                                 </div>
                                                                 <div class="btnBox">
                                                                         <a href="#">수정</a>
                                                                         |
                                                                         <a href="#">삭제</a>
                                                                 </div>
                                                             </div>
                                                             <div class="commentBody">
                                                                     정말 유익한 내용입니다.
                                                             </div>
                                                         </div>
                                                    </li>
                                                    <li>
                                                         <div class="commentBox">
                                                             <div class="commentHead">
                                                                 <div class="infoBox">
                                                                     <dl>
                                                                         <dt class="name">xman</dt>
                                                                         <dd>2018.10.01 22:14:32</dd>
                                                                     </dl>
                                                                 </div>
                                                                 <div class="btnBox">
                                                                         <a href="#">수정</a>
                                                                         |
                                                                         <a href="#">삭제</a>
                                                                 </div>
                                                             </div>
                                                             <div class="commentBody">
                                                                     정말 유익한 내용입니다.
                                                             </div>
                                                         </div>
                                                    </li>
                                                 </ul>
                                               </div>
                                           </div>
                                       </li>
                                       <li>
                                           <div class="dailyBox">
                                               <div class="dailyHead">
                                                   <div class="titleBox">
                                                        자바란 무엇인가....너무어렵구만....
                                                   </div>
                                                   <div class="infoBox">
                                                       <span class="name">임유신</span>
                                                       <span class="date">2018-10-22</span>
                                                   </div>
                                               </div>
                                               <div class="dailyBody">
                                                   <img src="<c:url value="/img/test.jpg" />" alt="">
                                                   <img src="<c:url value="/img/test2.png" />" alt="">
                                               </div>
                                               <div class="dalyFooter">
                                               <div class="likeBox">
                                                    <a href="#" class="like on">
                                                       <i class="fas fa-thumbs-up"></i>
                                                        좋아요 n개
                                                    </a>
                                                    <span class="commNum">
                                                        댓글 n개
                                                    </span>
                                                </div>
                                                <div class="commentForm">
                                                    <form action="" id="commentForm">
                                                        <textarea name="commentInput" id="commentInput" cols="30" rows="5" class="form-control"></textarea>
                                                        <a href="#" id="commentFormBtn">댓글 남기기</a>
                                                    </form>
                                                </div>
                                                <ul class="commentList">
                                                    <li>
                                                         <div class="commentBox">
                                                             <div class="commentHead">
                                                                 <div class="infoBox">
                                                                     <dl>
                                                                         <dt class="name">xman</dt>
                                                                         <dd>2018.10.01 22:14:32</dd>
                                                                     </dl>
                                                                 </div>
                                                                 <div class="btnBox">
                                                                         <a href="#">수정</a>
                                                                         |
                                                                         <a href="#">삭제</a>
                                                                 </div>
                                                             </div>
                                                             <div class="commentBody">
                                                                     정말 유익한 내용입니다.
                                                             </div>
                                                         </div>
                                                    </li>
                                                    <li>
                                                         <div class="commentBox">
                                                             <div class="commentHead">
                                                                 <div class="infoBox">
                                                                     <dl>
                                                                         <dt class="name">xman</dt>
                                                                         <dd>2018.10.01 22:14:32</dd>
                                                                     </dl>
                                                                 </div>
                                                                 <div class="btnBox">
                                                                         <a href="#">수정</a>
                                                                         |
                                                                         <a href="#">삭제</a>
                                                                 </div>
                                                             </div>
                                                             <div class="commentBody">
                                                                     정말 유익한 내용입니다.
                                                             </div>
                                                         </div>
                                                    </li>
                                                    <li>
                                                         <div class="commentBox">
                                                             <div class="commentHead">
                                                                 <div class="infoBox">
                                                                     <dl>
                                                                         <dt class="name">xman</dt>
                                                                         <dd>2018.10.01 22:14:32</dd>
                                                                     </dl>
                                                                 </div>
                                                                 <div class="btnBox">
                                                                         <a href="#">수정</a>
                                                                         |
                                                                         <a href="#">삭제</a>
                                                                 </div>
                                                             </div>
                                                             <div class="commentBody">
                                                                     정말 유익한 내용입니다.
                                                             </div>
                                                         </div>
                                                    </li>
                                                 </ul>
                                               </div>
                                           </div>
                                       </li>
                                   </ul>
                                   <div class="dailyMode">
                                       <a href="#">10개 게시물 더보기</a>
                                   </div>
                                </div><!-- end itemsWrap -->
                            </div>
                        </div>
                        <!-- end daily -->
                        <!-- reference -->
                        <div class="contents-wrap reference">
                        	<div class="items">
	                            <div class="itemsWrap">
	                               <!-- 컨텐츠 삽입부분 -->
	                               <h2 class="contentsTitle">스터디</h2>
	                               <table class="table list">
	                                   <thead>
	                                       <tr>
	                                           <th>글번호</th>
	                                           <th>글제목</th>
	                                           <th>글쓴이</th>
	                                           <th>조회수</th>
	                                           <th>등록일</th>
	                                       </tr>
	                                   </thead>
	                                   <tbody>
	                                       <tr>
	                                           <td>10</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>9</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>8</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>7</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>6</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>5</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>4</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>3</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>2</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                       <tr>
	                                           <td>1</td>
	                                           <td><a href="#">글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목글제목</a></td>
	                                           <td>글쓴이</td>
	                                           <td>100</td>
	                                           <td>2018-10-29</td>
	                                       </tr>
	                                   </tbody>
	                               </table>
	                               <a href="#" class="writeBtn">글쓰기</a>
	                               <nav class="text-center">
									  <ul class="pagination">
									    <li>
									      <a href="#" aria-label="Previous">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
									    </li>
									    <li class="active"><a href="#">1</a></li>
									    <li><a href="#">2</a></li>
									    <li><a href="#">3</a></li>
									    <li><a href="#">4</a></li>
									    <li><a href="#">5</a></li>
									    <li>
									      <a href="#" aria-label="Next">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
									    </li>
									  </ul>
	                                </nav>
	                                 <div class="searchWrap">
	                                 	 <form action="" id="search">
	                                      <select class="form-control" >
	                                          <option value="title">제목</option>
	                                          <option value="writer">글쓴이</option>
	                                      </select>
	                                      <input type="text" class="form-control" placeholder="Search for...">
	                                      <span class="input-group-btn">
	                                        <button class="btn btn-default" type="button"><i class="fas fa-search"></i></button>
	                                      </span>
	                                      </form>
	                                       
	                                 </div>
	                               	
	                            </div>
	                        </div>
                        </div>
                        
                        <!--end reference-->
                        <div class="aside">
                            <ul class="gnb">
                                <li class="active" data-target="main"><a href="#">홈</a></li>
                                <li data-target="study"><a href="#">스터디</a></li>
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
                    <source src="<c:url value="/media/music.mp3"/>" type="audio/mpeg">
                    </audio>
                <div class="btnBox">
                    <a href="#" class="prev"><i class="fas fa-backward"></i></a>
                    <a href="#" class="play" ><i class="fas fa-play"></i></a>
                    <a href="#" class="pause"><i class="fas fa-pause"></i></a>
                    <a href="#" class="next" ><i class="fas fa-forward"></i></a>
                </div>
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
</body>
</html>