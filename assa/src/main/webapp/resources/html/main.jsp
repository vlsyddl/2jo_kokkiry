<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="contents-wrap main active">
	                        	<div class="profile">
		                            <div class="imgBox">
		                                <img src="/assa/resources/img/male-avatar.png" alt="" class="img-responsive center-block">
		                            </div>
		                            <div class="todoList">
		                                <ul class="notYet">
		                                    <li>할일 3</li>
		                                    <li>할일 4</li>
		                                </ul>
		                                <ul class="complete">
		                                    <li>할일 1</li>
		                                    <li>할일 2</li>
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
		                             
		                            <!-- Modal -->
										
		                        </div>
		                        
		                        <div class="items">
		                            <div class="itemsWrap">
		                                <div class="latest cf">
		                                    <h6>최근 게시물</h6>
		                                    <div class="latest01">
		                                        <ul>
		                                            <li><a href="#"><span class="type study">스터디</span><span class="lastStudy"></span></a></li>
		                                            <li><a href="#"><span class="type daily">일상</span><span class="lastDaily"></span></a></li>
		                                            <li><a href="#"><span class="type archive">자료실</span><span class="lastData"></span></a></li>
		                                        </ul>
		                                    </div>
		                                    <div class="latest02">
		                                        <ul>
		                                            <li><a href="#">스터디 <span class="latestCount"><span class="new"><span class="todayStudy"></span></span> / <span class="totalStudy"></span></span></a></li>
		                                            <li><a href="#">일상 <span class="latestCount"><span class="new"><span class="todayDaily"></span></span> / <span class="totalDaily"></span></span></a></li>
		                                            <li><a href="#">자료실 <span class="latestCount"><span class="new"><span class="todayData"></span></span> / <span class="totalData"></span></span></a></li>
		                                            <li><a href="#">오늘의 할일 <span class="latestCount"><span class="new"><span class="todayTodo"></span></span> / <span class="totalTodo"></span></span></a></li>
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
	                        
	                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
		                            <script>
										$(function () {
											$.ajax({
										 		url: "/assa/main/lastBoard.json",
										 	})
										 	.done(function (result) {
										 		$(".lastStudy").html(
										 				result.lastStudy
										 		);
										 		$(".lastDaily").html(
										 				result.lastDaily
										 		);
										 		$(".lastData").html(
										 				result.lastData
										 		);
										 	});	
										});
								          
										$(function () {
											$.ajax({
										 		url: "/assa/main/countBoard.json",
										 	})
										 	.done(function (result) {
										 		$(".todayStudy").html(
										 				result.todayStudy
										 		);
										 		$(".totalStudy").html(
										 				result.totalStudy
										 		);
										 		$(".todayDaily").html(
										 				result.todayDaily
										 		);
										 		$(".totalDaily").html(
										 				result.totalDaily
										 		);
										 		$(".todayData").html(
										 				result.todayData
										 		);
										 		$(".totalData").html(
										 				result.totalData
										 		);
										 		$(".todayTodo").html(
										 				result.todayTodo
										 		);
										 		$(".totalTodo").html(
										 				result.totalTodo
										 		);
										 	});	
										});
								          
										
											
											$(function () {
												$.ajax({
													url: "/assa/main/miniCheckedTodo.json",
												})
												.done(function (result) {
													var html ="";
													for (var i = 0; i < result.length; i++) {
														html += "<li>"+result[i]+"</li>"
													}
													//console.log(html);
													$(" ul.complete ").html(html);
												});
											});
								         
											$(function () {
												$.ajax({
													url: "/assa/main/miniNotCheckedTodo.json",
												})
												.done(function (result) {
													var html ="";
													for (var i = 0; i < result.length; i++) {
														html += "<li>"+result[i]+"</li>"
													}
													//console.log(html);
													$(" ul.notYet ").html(html);
												});
											});
											
											$(function () {
												$.ajax({
													url: "/assa/main/chart.json",
												})
												.done(function (result) {
													//console.log(result);
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
								                        labels: result.dateArr,
								                        datasets: [
								                            {
								                                label: "승재쓰",
								                                fill: false,
								                                lineTension: 0,
								                                borderColor: "#BF0B2C",
								                                data: result.preTodoArr,
								                            },
								                            {
								                                label: "유신쓰",
								                                fill: false,
								                                lineTension: 0,
								                                borderColor: "#032563",
								                                data: [66,15,100,98,45,99,78],
								                            },
								                            {
								                                label: "수진쓰",
								                                fill: false,
								                                lineTension: 0,
								                                borderColor: "#0AA38C",
								                                data: [70,56,72,87,91,45,25],
								                            },
								                            {
								                                label: "은비쓰",
								                                fill: false,
								                                lineTension: 0,
								                                borderColor: "#F24E13",
								                                data: [100,90,80,60,40,20,10],
								                            },
								                            {
								                                label: "인용쓰",
								                                fill: false,
								                                lineTension: 0,
								                                borderColor: "#8D0CE8",
								                                data: [10,20,30,50,70,80,100],
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
												});
											});
			
		                            </script>