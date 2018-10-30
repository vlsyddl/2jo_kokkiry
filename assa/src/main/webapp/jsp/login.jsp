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
            <form action="">
                <input type="text" name="id" id="id" placeholder="아이디(이메일)">
                <input type="password" name="password" id="password" placeholder="비밀번호">
            </form>
            <a href="#" class="loginBtn">로그인</a>
            <div class="btnBox">
                <a href="#"  data-toggle="modal" data-target="#findPass">아이디 / 비밀번호 찾기</a>
                |
                <a href="#" data-toggle="modal" data-target="#signUpModal">회원가입</a>
            </div>
        </div>
    </div>
<!-- Modal -->
<div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-body signup">
      	<img src="<c:url value="/img/logo.jpg"/>" class="img-responsive center-block" style="max-width: 200px;"/>
      	<form action="" method="post" id="signUpForm">
       <div class="form-group">
	    <label for="signUp_id" class="col-sm-3 control-label">이름</label>
	    <div class="col-sm-9">
	      <input class="input form-control" type="text" name="id" id="signUp_id" placeholder="  이름"/>
	    </div>
	  </div>
       <div class="form-group">
	    <label for="signUp_email" class="col-sm-3 control-label">이메일</label>
	    <div class="col-sm-9">
	      <input class="input form-control" type="text" name="email" id="signUp_email" placeholder="  이메일 "/>
	    </div>
	  </div>
       <div class="form-group">
	    <label for="signUp_pass" class="col-sm-3 control-label">비밀번호</label>
	    <div class="col-sm-9">
	       <input class="input form-control" type="password" id="signUp_pass" name="pass" placeholder="  비밀번호"/>
	    </div>
	  </div>
       <div class="form-group">
	    <label for="signUp_pass2" class="col-sm-3 control-label">비밀번호 확인</label>
	    <div class="col-sm-9">
	       <input class="input form-control" type="password" name="pass2" id="signUp_pass2" placeholder="  비밀번호 확인"/>
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
		       <input type="text" name="phone" size=4 maxlength=4  class="form-control" id="birth1"/>년
			    <input type="text" name="phone" size=2 maxlength=2  class="form-control" id="birth2"/>월
			    <input type="text" name="phone" size=2 maxlength=2  class="form-control" id="birth3"/>일
		    </div>
	     </div>
	    <div class="form-group triple" >
	    	<label for="phone1" class="col-sm-3 control-label">연락처  </label>
		    <div class="col-sm-9">
		       	<input type="text" name="phone" size=3 maxlength=3   class="form-control" id="phone1"/> -
			    <input type="text" name="phone" size=4 maxlength=4   class="form-control" id="phone2"/> -
			    <input type="text" name="phone" size=4 maxlength=4   class="form-control" id="phone3"/>
		    </div>
	    </div>
	    </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-success">회원가입</button>
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
        <form action="" method="post" id="findPassForm">
        	<div class="form-group">
			    <label for="signUp_id" class="col-sm-3 control-label">이름</label>
			    <div class="col-sm-9">
			      <input class="input form-control" type="text" name="id" id="signUp_id" placeholder="  이름"/>
			    </div>
			  </div>
		       <div class="form-group">
			    <label for="signUp_email" class="col-sm-3 control-label">이메일</label>
			    <div class="col-sm-9">
			      <input class="input form-control" type="text" name="email" id="signUp_email" placeholder="  이메일 "/>
			    </div>
			  </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-success">비밀번호 찾기</button>
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
        })
    </script>
</body>
</html>