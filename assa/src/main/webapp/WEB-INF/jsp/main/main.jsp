<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ASSAWORLD - MAIN</title>
     <link rel="apple-touch-icon" sizes="57x57" href="/assa/resources/img/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="/assa/resources/img/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="/assa/resources/img/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="/assa/resources/img/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/assa/resources/img/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="/assa/resources/img/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="/assa/resources/img/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="/assa/resources/img/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="/assa/resources/img/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="/assa/resources//img/faviconandroid-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/assa/resources/img/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/assa/resources/img/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/assa/resources/img/favicon/favicon-16x16.png">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="/assa/resources/img/favicon/ms-icon-144x144.png">
  	 <c:import url="/common/importCss.jsp"/>
  	 <c:import url="/common/importJs.jsp"/>
   
    <script src="<c:url value="/resources/js/main/script.js"/>"></script>
     <link rel="stylesheet" href="<c:url value="/resources/css/login/style.css"/>">
      <script type="text/javascript" src="<c:url value="/resources/se2/js/HuskyEZCreator.js"/>" charset="utf-8"></script>
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
                            <h3>${member.nickname}님의 ASSAWORLD</h3>
                        </div>
                       	<div class="inner">
	                        
                        </div>
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
                <script>
                            
                        </script>
            </div>
            <div class="jukeBox">
                <h2>Juke Box</h2>
                <div class="infoBox">
                    <h3 class="title">삐삐</h3>
                    <h5 class="name">아이유</h5>
                </div>
                <div class="imgBox">
                    <img src="<c:url value="/resources/img/jukeImg.jpg"/>" alt="" class="img-responsive center-block">
                </div>
                <audio id="audio" controls>
                    <source src="<c:url value="/resources/media/music.mp3"/>" type="audio/mpeg">
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
        var memberNickName = $("#memberNickName").val(); 
        var memberEmail = $("#memberEmail").val(); 
        
        
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
         
          $(function(){
        	  $.ajax({
      			url : "<c:url value="/resources/html/main.jsp"/>",
      		}).done(function(data){
      			$(".inner").html(data)
      		})
          })
					$("#profile").click(function () {
						$("#file").click();
					});
					
					
					
					 $('#file').on('change', function(){
						 alert("파일이 첨부되었습니다.");
						 var formData = new FormData();
						  console.dir($("input[name=file]")[0].files[0]); 
						 formData.append("file", $("input[name=file]")[0].files[0]);
						 
						 var reader = new FileReader();
						 reader.onload= function () {
							$("#profile").attr("src", reader.result);
							$.ajax({
								url : "${pageContext.request.contextPath}/mypage/profile.k",
				    			type : "POST",
				    			processData: false, //쿼리 (데이터 = 값) 형식을 해제하고 문자열? 형태로 보냄
				                contentType: false, // 기본 타입 말고 multipart/form-data로 설정하게
				                data : formData
				    		}).done(function (data) {
				    		});
						 }
						 reader.readAsDataURL($("input[name=file]")[0].files[0]);
						 
						 

					});
					
						
			 		$("#singup_btn").click(function () {

					    		$.ajax({
					    			url : "${pageContext.request.contextPath}/mypage/mypageUpload.k",
					    			type : "POST",
					    			data : $("#mypageForm").serialize(),
					    			beforeSend : function(){
					    				if(!($("#signup_name").hasClass("valid"))||!($("#signup_nickname").hasClass("valid"))){
					    					alert("이름과 닉네임은 2자-5자의 한글, 3자-10자의 영어만 가능 합니다.");
					    					return false;
					    				}else if(!($("input[name=password]").hasClass("valid"))){
					    					alert("비밀번호는 영어 소문자, 대문자, 숫자, 특수문자(!@#$%^*+=-)를 1개씩 각각 포함 해야 합니다.");
					    					return false;
					    				}else if($("input[name=rePassword]").val()!=""||$("input[name=rePassword2]").val()!=""){
					    					if(!($("input[name=rePassword]").hasClass("valid"))||!($("input[name=rePassword2]").hasClass("valid"))){
					    						alert("비밀번호는 영어 소문자, 대문자, 숫자, 특수문자(!@#$%^*+=-)를 1개씩을 각각 포함 해야 합니다.");
					        					return false;
					    					}
					    				}else if(/[^0-9]/.test($("input[name='nbirth']").val())&&/[^0-9]/.test($("input[name='nphone']").val())){
				    						alert("숫자만 입력 가능합니다.");
				    						return false;
				    					}
					    			}
					    		}).done(function (cnt) {
					    			console.log()
					    			if(cnt!=0){
					    				alert("회원님의 정보가 수정되었습니다.");
					        			$("#mypageForm")[0].reset();
					        			reset();
					    			}else{
					    				alert("회원님의 비밀번호가 올바르지 못하여 정보 수정이 불가능 합니다.");
					    			}
					    		}).fail(function (data) {
					    		});
						});
			 		
			 		
			 		
			 		

					
					
					
				$("#signup_name").on("keyup", function () {
					if(/^[가-힣]{2,5}|[a-zA-z]{3,10}$/.test($(this).val())){
						$(this).addClass("valid");
					}else{
						$(this).removeClass("valid");
					}
				});
				
				 
				 
				$("#signup_nickname").on("keyup", function () {
					if(/^[가-힣]{2,5}|[a-zA-z]{3,10}$/.test($(this).val())){
						$.ajax({
							url : '${pageContext.request.contextPath}/login/uniqueNickname.k',
							type : "POST",
							data : $("#mypageForm").serialize()
						}).done(function (member){
							if(!(member.userNo)){
								$("#signup_nickname").addClass("valid");	
								$("#signup_nickname").removeClass("unvalid");	
							}else{
								$("#signup_nickname").removeClass("valid");
								$("#signup_nickname").addClass("unvalid");	
							}
						});
					}else{
						$("#signup_nickname").removeClass("valid");
					}
				});
					
				
				$("input[name=password]").on("keyup", function () {	
						if(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^*+=-]).{8,16}/.test($(this).val())){
							$(this).addClass("valid");	
						}else{
							$(this).removeClass("valid");
						}
				});
				
				$("input[name=rePassword]").on("keyup", function () {
						$(this).removeClass("invalid");
						if(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^*+=-]).{8,16}/.test($(this).val())){
							$(this).addClass("valid");
						}else{
							$(this).removeClass("valid");
						} 
				});
				
				
				$("input[name=rePassword2]").on("keyup", function () {
					$(this).removeClass("invalid");
				if($("#signUp_pass2").val() === $(this).val()){
					if(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^*+=-]).{8,16}/.test($(this).val())){
						$(this).addClass("valid");
					}else{
						$(this).removeClass("valid");
					} 
				}else{
					$(this).addClass("invalid");
				}
			});
				
				
				
				
				
				$("#mypage").click(function() {
					$.ajax({
						url : "${pageContext.request.contextPath}/mypage/mymember.k",
						type : "POST",
						data : $("#mypageForm").serialize()
					}).done(function (member) {
						console.log(member);
						if(member.gender=='F'){
							$("#gender02").prop("checked", true);
						}
						$("img").attr("src", member.profilePath+"/"+member.profileName);
						$("#signup_userNo").attr("value", member.userNo);
						$("#signup_name").attr("value", member.name);
						$("#signup_nickname").attr("value", member.nickname);
						$("#findPass_email").attr("value", member.userEmail);
						$("#nbirth1").attr("value", (member.birth).substring(0,4));
						$("#nbirth2").attr("value", (member.birth).substring(4,6));
						$("#nbirth3").attr("value", (member.birth).substring(6,8));
						$("#nphone1").attr("value", (member.phone).substring(0,3));
						$("#nphone2").attr("value", (member.phone).substring(4,7));
						$("#nphone3").attr("value", (member.phone).substring(7,11));
					})
				});
				
				
				$("button[data-dismiss='modal']").click(function() {
					reset();
				});


				function reset() {
					$("#mypageForm")[0].reset();
					$("input").removeClass("valid");
				};

				$(function () {
					$.ajax({
				 		url: "<c:url value="/main/checkVisitor.json" />",
				 	})
				 	.done(function (result) {
				 		$(".count > .today").html(
				 				result.todayVititorCnt
				 		);
				 		$(".count > .total").html(
				 				result.totalVititorCnt
				 		);
				 	});	
				});
					
    </script>
    <div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										  <div class="modal-dialog ">
										    <div class="modal-content">
										      <div class="modal-body signup mypage">
										      
												<img  src="<c:url value="${member.profilePath}/${member.profileName}"/>" id="profile" class="img-circle img-responsive center-block" style=" width: 150px; height: 150px;  object-fit: cover; object-position: top;" />
										
												<!-- 자동 파일 업로드 보류 ::: onChange="$(this).closest('form').submit()" onChange="$(this).closest('form').submit()"-->
										      	<form method="POST" enctype="multipart/form-data" id="fileUploadForm" name="fileUploadForm" >
													<input type="file" id="file" name="file" class="hidden"/><br>
													<button class="hidden">업로드</button>
												</form>	
										      	<form name="mypageForm" method="POST" id="mypageForm">
										      	<div class="form-group hidden">
											    <label for="signUp_id" class="col-sm-3 control-label" >회원번호</label>
											    <div class="col-sm-9">
											      <input class="input form-control valid" type="text" name="userNo" id="signup_userNo" placeholder="  이름"/>
											       <span class="check-icon"></span>
											    </div>
											    </div>
										       <div class="form-group">
											    <label for="signUp_id" class="col-sm-3 control-label" >이름</label>
											    <div class="col-sm-9">
											      <input class="input form-control valid" type="text" name="name" id="signup_name"  placeholder="  이름"/>
											       <span class="check-icon"></span>
											    </div>
											  </div>
											  <div class="form-group">
											    <label for="findPass_email" class="col-sm-3 control-label">닉네임</label>
											    <div class="col-sm-9">
											      <input class="input form-control valid" type="text" name="nickname" id="signup_nickname" placeholder="  이메일 "/>
											       <span class="check-icon"></span>
											    </div>
											  </div>
											  <div class="form-group signUp_email hidden">
												<label for="findPass_email" class="col-sm-3 control-label ">이메일</label>
												<div class="col-sm-9">
													<input class="input form-control valid" type="text" name="userEmail" id="findPass_email"  placeholder="  이메일 "/>
												</div> 
											</div>
											  
										       <div class="form-group">
											    <label for="signUp_pass" class="col-sm-3 control-label">비밀번호</label>
											    <div class="col-sm-9">
											       <input class="input form-control" type="password" id="password" name="password" default='${member.password}'   placeholder="  비밀번호"/>
											        <span class="check-icon"></span>
											    </div>
											  </div>
										       <div class="form-group">
											    <label for="signUp_pass2" class="col-sm-3 control-label">새 비밀번호</label>
											    <div class="col-sm-9">
											       <input class="input form-control" type="password" name="rePassword" id="signUp_pass2" placeholder="  비밀번호 확인"/>
											        <span class="check-icon"></span>
											    </div>
											  </div>
										       <div class="form-group">
											    <label for="signUp_pass3" class="col-sm-3 control-label">새 비밀번호 확인</label>
											    <div class="col-sm-9">
											       <input class="input form-control" type="password" name="rePassword2" id="signUp_pass3" placeholder="  비밀번호 확인"/>
											        <span class="check-icon"></span>
											    </div>
											  </div>
											    <div class="form-group">
											        <label for="gender01 "class="col-sm-3 control-label">성별</label>
											        <div class="col-sm-9">
											        	<label class="radio-inline">
														  <input type="radio" id="gender01" name="gender" value="M" checked> 남성
														</label>  
														<label class="radio-inline">
														<input type="radio" id="gender02" name="gender"value="F"> 여성
														</label>
											
											        </div>
											    </div>
											     <div class="form-group triple">
											     	<label for="birth1" class="col-sm-3 control-label">생년월일</label>
												    <div class="col-sm-9">
												       <input type="text" name="nbirth" id="nbirth1" size=4 minlength=4 maxlength=4  class="form-control"  id="nbirth1"/>년
													    <input type="text" name="nbirth" id="nbirth2" size=2 minlength=2 maxlength=2  class="form-control"   id="nbirth2"/>월
													    <input type="text" name="nbirth" id="nbirth3"size=2 minlength=2 maxlength=2  class="form-control" id="nbirth3"/>일
												    </div>
											     </div>
											    <div class="form-group triple" >
											    	<label for="phone1" class="col-sm-3 control-label">연락처  </label>
												    <div class="col-sm-9">
												       	<input type="text" name="nphone" id="nphone1" size=3 minlength=3 maxlength=3   class="form-control"   id="nphone1"/> -
													    <input type="text" name="nphone" id="nphone2" size=4 minlength=4 maxlength=4   class="form-control" id="nphone2"/> -
													    <input type="text" name="nphone" id="nphone3" size=4 minlength=4 maxlength=4   class="form-control"  id="nphone3"/>
												    </div>
											    </div>
											    </form>
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
										        <button type="button" class="btn btn-primary" id="singup_btn">회원정보 수정</button>
										      </div>
										    </div>
										  </div>
										</div>
    

</body>
</html>