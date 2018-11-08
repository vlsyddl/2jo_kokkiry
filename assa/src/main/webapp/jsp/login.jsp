<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ASSAWORLD - LOGIN</title>
    <link rel="stylesheet" href="<c:url value="/css/login/style.css"/>">
    <c:import url="/common/importCss.jsp"/>
    
<body>
    <div id="wrap" class="login">
        <!-- The video -->
    <video autoplay muted loop id="myVideo">
        <source src="<c:url value="/media/video3.mp4"/>" type="video/mp4">
      </video>
        <div class="coverTop"></div>
        <div class="coverBottom"></div>
        <div id="loading">
            <h3>ASSA WORLD</h3>
            <div class="loadingBar ani"></div>
            <div class="bgBar"></div>
        </div>
     </div>
        <div id="login">
            <form method="POST" id="loginForm" name="loginForm">
                <input type="text" name="userEmail" id="userEmail" placeholder="아이디(이메일)">
                <input type="password" name="password" id="password" placeholder="비밀번호">
            </form>
            <a href="#" class="loginBtn">로그인</a>
            <div class="btnBox">
                <a href="#"  data-toggle="modal" data-target="#findPass">아이디 / 비밀번호 찾기</a>
                |
                <a href="#" data-toggle="modal" data-target="#signUpModal">회원가입</a>
            </div>
        </div>
        
        
        
<!-- Modal -->
<div class="modal fade " id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-body signup">
      	<img src="<c:url value="/img/logo.jpg"/>" class="img-responsive center-block" style="max-width: 200px;"/>
      	<form name="signupForm" method="POST" id="signupForm">
       <div class="form-group">
	    <label for="signup_name" class="col-sm-3 control-label">이름</label>
	    <div class="col-sm-9">
	      <input class="input form-control" type="text" name="name" id="signup_name" placeholder="  이름"/>
	      <span class="check-icon"></span>
	    </div>
	  </div>
       <div class="form-group">
	    <label for="signup_email" class="col-sm-3 control-label">이메일</label>
	    <div class="col-sm-9">
	      <input class="input form-control" type="text" name="userEmail" id="signup_email" placeholder="  이메일 "/>
	      <span class="check-icon"></span>
	      <p class="hidden" >※이메일이 중복되었습니다.</p>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="signup_nickname" class="col-sm-3 control-label">닉네임</label>
	    <div class="col-sm-9">
	      <input class="input form-control" type="text" name="nickname" id="signup_nickname" placeholder="  닉네임 "/>
	      <span class="check-icon"></span>
	      <p class="hidden" >※닉네임이 중복되었습니다.</p>
	    </div>
	  </div>
       <div class="form-group">
	    <label for="signUp_pass" class="col-sm-3 control-label">비밀번호</label>
	    <div class="col-sm-9">
	       <input class="input form-control" type="password" id="Spassword" name="password" placeholder="  비밀번호"/>
	       <span class="check-icon"></span>
	        <p id="info">※영어 소문자, 대문자, 숫자, 특수문자(!@#$%^*+=-) 1개씩 각각 포함</p>
	    </div>
	  </div>
       <div class="form-group">
	    <label for="rePassoword" class="col-sm-3 control-label">비밀번호 확인</label>
	    <div class="col-sm-9">
	       <input class="input form-control" type="password" name="rePassoword" id="signUp_pass2" placeholder="  비밀번호 확인"/>
	       <span class="check-icon"></span>
	    </div>
	  </div>
	    <div class="form-group">
	        <label for="gender01 "class="col-sm-3 control-label">성별</label>
	        <div class="col-sm-9">
	        	<label class="radio-inline">
				  <input type="radio" id="gender01" name="gender"value="M"> 남성
				</label>  
		        <label class="radio-inline">
				  <input type="radio" id="gender02" name="gender"value="F"> 여성
				</label>
	        </div>
	    </div>
	     <div class="form-group triple">
	     	<label for="birth1" class="col-sm-3 control-label">생년월일</label>
		    <div class="col-sm-9">
		       <input type="text" name="nbirth" size=4  maxlength=4  class="form-control 4length" id="birth1"/>년
			    <input type="text" name="nbirth" size=2  maxlength=2  class="form-control 2length" id="birth2"/>월
			    <input type="text" name="nbirth" size=2  maxlength=2  class="form-control 2length" id="birth3"/>일
		    </div>
	     </div>
	    <div class="form-group triple" >
	    	<label for="phone1" class="col-sm-3 control-label">연락처  </label>
		    <div class="col-sm-9">
		       	<input type="text" name="nphone" size=3  maxlength=3   class="form-control 3length" id="phone1"/> -
			    <input type="text" name="nphone" size=4  maxlength=4   class="form-control 4length" id="phone2"/> -
			    <input type="text" name="nphone" size=4  maxlength=4   class="form-control 4length" id="phone3"/>
		    </div>
	    </div>
	    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-success" id="singup_btn">회원가입</button>
      </div>
    </div>
  </div>
</div>




<!-- Modal -->
<div class="modal fade" id="findPass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
          
      	<img src="<c:url value="/img/logo.jpg"/>" class="img-responsive center-block" style="max-width: 200px;"/>
        <form name="findPassForm" method="POST" id="findPassForm">
        

        		
        		
        	<div class="form-group signUp_id">
			    <label for="findPass_name" class="col-sm-3 control-label">이름</label>
			    <div class="col-sm-9">
			      <input class="input form-control" type="text" name="name" id="findPass_name" placeholder="  이름"/>
			    </div>
			    <span class="check-icon"></span>
			  </div>
		       <div class="form-group signUp_email">
			    <label for="findPass_email" class="col-sm-3 control-label">이메일</label>
			    <div class="col-sm-9">
			      <input class="input form-control" type="text" name="userEmail" id="findPass_email" placeholder="  이메일 "/>
			    </div> 
			  </div>
			  
			  
		       <div class="form-group send_re_pass">
			    <label  class="col-sm-3 control-label"></label>
			    <div class="col-sm-9">
			      <button class="btn btn-info" type="button" name="sandRePass" id="send_re_pass">  이메일로 비밀번호  재발급 받기    </button>
			    </div>
			  </div>
			  
			  			      
			  
			<div class="form-group triple hidden email_verify">
			    <label for="email_verify" class="col-sm-3 control-label">이메일 인증</label>
			    <div class="col-sm-9">
			      <input class="input form-control" type="text" name="emailVerify" id="email_verify" placeholder="  이메일 인증 번호 "/>
			      <span class="check-icon"></span>
			    </div> 
			</div> 
			
			
			<div class="form-group triple hidden Useremail_verify">
			    <label  class="col-sm-3 control-label"></label>
			    <div class="col-sm-9">
			      <button class="btn btn-info" type="button" name="emailVerify" id="Useremail_verify">  이메일 인증    </button>
			    </div> 
			</div> 
			
			
			
			<div class="form-group findPass_pass hidden">
			    <label for="findPass_pass" class="col-sm-3 control-label">비밀번호</label>
			    <div class="col-sm-9">
			       <input class="input form-control" type="password" id="findPass_pass" name="password" placeholder="  새비밀번호"/>
			        <span class="check-icon"></span>
			    </div>
	  		</div>
	  		
	  		
	        <div class="form-group findPass_pass2 hidden">
		    <label for="findPass_pass2" class="col-sm-3 control-label">비밀번호 확인</label>
		    	<div class="col-sm-9">
		       		<input class="input form-control" type="password" name="rePassoword" id="findPass_pass2" placeholder="  새비밀번호 확인"/>
		       		<span class="check-icon"></span>
		    	</div>
		    </div>
			    
			    
			    
			    
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-success" id="findPassword" >비밀번호 재설정</button>
      </div>
    </div>
  </div>
</div>
    <c:import url="/common/importJs.jsp"/>
    <script>
    $(function(){
        setTimeout(function(){
            $("#loading .loadingBar").removeClass("ani").stop().animate({"backgroundColor":"#000","width":"100vw"},1000);
            $("#loading h3").animate({
                "top":"-12vh","font-size":"3em"
            },1000)
        },3000)
        setTimeout(function(){
            $(".coverTop").animate({"top":"-50vh"},1000)
            $(".coverBottom").animate({"bottom":"-50vh"},1000)
            $("#loading .loadingBar").hide();
        },4000)
        setTimeout(function(){
            $("#login").animate({"opacity":"1","top":"20vh"},500)},5000)
    });
    
        
        

  		
  
       
    	//로그인 처리
    	$(".loginBtn").click(function () {
    		$.ajax({
    			url : "${pageContext.request.contextPath}/login/loginVerify.k",
    			type: "POST",
    			data : $("#loginForm").serialize()
        	}).done(function (member){
        		console.log("${member}");
        		if("${member.userNo}"){
        			alert("${member.name}"+"님 로그인 되었습니다.");
        		}else{
        			alert("로그인을 실패 하었습니다.");
        		}
        	});		 	
    	});
    	
    	
    	
    	//이메일, 이름이 맞을 시 해당 이메일로 임시 비밀번호를 전송하고 이메일 인증을 위한 input창에 hidden을 제거    	
    	
    	$("#send_re_pass").click(function () {
    		$.ajax({
    			url : "${pageContext.request.contextPath}/login/userVerify.k",
    			type: "POST",
    			data : $("#findPassForm").serialize()
        	}).done(function (cnt){
        		if(cnt!=0){
	        		$(".send_re_pass").addClass("hidden");
	        		$(".email_verify").removeClass("hidden");
	        		$(".Useremail_verify").removeClass("hidden");
	        		alert("임시비밀번호로 비밀번호가 재설정 되었습니다.");
        		}else{
        			alert("올바르지 않는 사용자 정보 입니다. 다시 인증해 주세요.");
        		};
        	}).fail(function (){alert("실행하던 도중 오류 발생");}); 	
    	});
    	
    	$("#findPassword").click(function () {
    		if($(this).hasClass("verify")){
         		console.log("클릭됨.");
            	$(".signUp_id").addClass("hidden");
            	$(".signUp_email").addClass("hidden");
            	$(".sned_email").addClass("hidden");
            	$(".send_re_pass").addClass("hidden");
             	$(".email_verify").addClass("hidden"); 
             	$(".Useremail_verify").addClass("hidden")
            	
            	$(".findPass_pass").removeClass("hidden");
            	$(".findPass_pass2").removeClass("hidden");
            	$(this).removeClass("verify");
        		$(this).addClass("submit");
    		}else if($(this).hasClass("submit")){
        		$.ajax({
        			url : "${pageContext.request.contextPath}/login/PassModify.k",
        			type : "POST",
        			data : $("#findPassForm").serialize(),
        			beforesend : function () {
        				
        			}
        		}).done(function (cnt) {
        			if(cnt!=0){
        				console.log($("#findPass_pass2").hasClass("valid"));
        				console.log($("#findPass_pass2").hasClass("valid")==1);
        				if($("#findPass_pass2").hasClass("valid")==1){
            				alert("새 비밀번호가 설정되었습니다.");
                    		reset();
            				$('#findPass').modal('hide');
        				}
            		}
        		}).fail(function () { alert("임시 비밀번호 설정 중에 오류가 발생하였습니다.");});
    		}else{ alert("이메일 인증을 먼저 하세요.");}
    		
    	});
    	
    	
		//이메일로 발송된 임시비밀번호가 맞다면 새 비밀번호를 설정하기로 감.
     	$("#Useremail_verify").click(function () {
    		$.ajax({
    			url : "${pageContext.request.contextPath}/login/passVerify.k",
    			type : "POST",
    			data : $("#findPassForm").serialize()
    		}).done(function (member) {
    			if(member.userNo){
	    			$("#sned_email").addClass("valid");
	        		$("#findPassword").addClass("verify");
	        		alert("임시 비밀번호 인증에 성공하셨습니다.");
    			}else{
    				alert("임시 비밀번호 인증에 실패 하셨습니다.");
    			}
    		}).fail(function () { console.log("임시 비밀번호 인증에 실패 하셨습니다.");});
    	});  
		
		
		
		$("button[data-dismiss='modal']").click(function() {
				reset();
		});
		
		
		function reset() {
			$("#signupForm")[0].reset();
			$("#findPassForm")[0].reset();
			$("input").removeClass("valid");
		};
		
		

     	
    
		

		
		//회원가입하기
		$("#singup_btn").click(function () {
    		$.ajax({
    			url : '${pageContext.request.contextPath}/login/signup.k',
    			type : "POST",
    			data : $("#signupForm").serialize(),
    			beforeSend : function(){
    				if(!($("#signup_name").hasClass("valid"))||!($("#signup_nickname").hasClass("valid"))){
    					alert("이름과 닉네임은 2자-5자의 한글, 3자-10자의 영어만 가능 합니다.");
    					return false;
    				}else if(!($("signup_email").has("valid"))){
    					alert("이메일은 이메일 형식을 사용해야 합니다.");
    					return false;
    				}else if(!($("input[name=rePassoword]").hasClass("valid"))||!($("input[name=rePassoword]").hasClass("valid"))){
    					alert("비밀번호는 영어 소문자, 대문자, 숫자, 특수문자(!@#$%^*+=-)를 1개씩 각각 포함 해야 합니다.");
    					return false;
    				}else if(/[^0-9]{4}/.test($("input[class='4length']").val())&&/[^0-9]{3}/.test($("input[class='3length']").val())&/[^0-9]{2}/.test($("input[class='2length']").val())){
    						alert("숫자만 입력만 가능합니다.\n전화번호는 3자리, 4자리, 4자리, 연락처는 3자리, 4자리, 4자리의 숫자 형태입니다.");
    						return false;
    				}
    			}
    		}).done(function (cnt) {
    			if(cnt !=0){
        		alert("회원가입이 완료되었습니다.");
        		reset();
    			$('#signUpModal').modal('hide');
    			}else{alert("회원가입 중  문제가 발생되었습니다.\n 다시 회원가입해주세요");}
    		});
    	}); 	
		
		
		
	$("#signup_name").on("keyup", function () {
		if(/^[가-힣]{2,5}|[a-zA-z]{3,10}$/.test($(this).val())){
			$(this).addClass("valid");
		}else{
			$(this).removeClass("valid");
		}
	});
	

	 $("#signup_email").on("keyup", function () {
		if(/([a-zA-z\d-_]{5,12})*(@[a-zA-z\d-_]{2,10})*(\.[a-z]{2,5})/.test($(this).val())){
			$.ajax({
				url : '${pageContext.request.contextPath}/login/uniqueEmail.k',
				type : "POST",
				data : $("#signupForm").serialize()
			}).done(function (member){
				if(!(member.userNo)){
					$("#signup_email").addClass("valid");	
					$("#signup_email").removeClass("unvalid");	
					console.log(member);
				}else{
					$("#signup_email").removeClass("valid");
					$("#signup_email").addClass("unvalid");	
				}
			});
		}else{
			$("#signup_email").removeClass("valid");
		}
	});
	 
	 
	$("#signup_nickname").on("keyup", function () {
		if(/^[가-힣]{2,5}|[a-zA-z]{3,10}$/.test($(this).val())){
			console.log($(this).val())
			$.ajax({
				url : '${pageContext.request.contextPath}/login/uniqueNickname.k',
				type : "POST",
				data : $("#signupForm").serialize()
			}).done(function (member){
				if(!(member.userNo)){
					$("#signup_nickname").addClass("valid");	
					$("#signup_nickname").removeClass("unvalid");	
					console.log(member);
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
	
	$("input[name=rePassoword]").on("keyup", function () {
			$(this).removeClass("invalid");
		if($("#findPass_pass").val() === $(this).val()|| $("#Spassword").val() === $(this).val()){
			if(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^*+=-]).{8,16}/.test($(this).val())){
				$(this).addClass("valid");
			}else{
				$(this).removeClass("valid");
			} 
		}else{
			$(this).addClass("invalid");
		}
	});
	
	
	
	
		
		
		
		//회원가입에 대한 정규식 조건들
    </script>
</body>
</html>