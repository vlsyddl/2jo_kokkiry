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
       <script src="<c:url value="/js/daily/script.js"/>"></script>
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
                        <div class="contents-wrap daily active">
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
                       <div class="contents-wrap daily-write">
                       	 <div class="items">
                            <div class="itemsWrap">
                            <script type="text/javascript">
								var oEditors = [];
								$(function(){
								      nhn.husky.EZCreator.createInIFrame({
								          oAppRef: oEditors,
								          elPlaceHolder: "study_content", //textarea에서 지정한 id와 일치해야 합니다. 
								          //SmartEditor2Skin.html 파일이 존재하는 경로
								          sSkinURI: "<c:url value="/se2/SmartEditor2Skin.html"/>",  
								          htParams : {
								              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
								              bUseToolbar : true,             
								              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
								              bUseVerticalResizer : true,     
								              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
								              bUseModeChanger : true,         
								              fOnBeforeUnload : function(){
								                   
								              }
								          }, 
								          fOnAppLoad : function(){
								              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
								              oEditors.getById["study_content"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
								          },
								          fCreator: "createSEditor2"
								      });
								      
								      //저장버튼 클릭시 form 전송
								      $("#save").click(function(){
								          oEditors.getById["study_content"].exec("UPDATE_CONTENTS_FIELD", []);
								          $("#frm").submit();
								      });    
								});
								 
								 
								 
								</script>
								<h2 class="contentsTitle">일상</h2>
							<form id="frm" action="" method="post" >
								<div class="form-group">
                                    <label for="study_title" class="control-label">글 제목</label>
                                    <input class="input form-control" type="text" name="id" id="study_title" placeholder="글 제목"/>
                                </div>
								<div class="form-group">
                                    <label for="study_content" class="control-label">글 내용</label>                       
                                    <textarea rows="10" cols="30" id="study_content" name="study_content" style="width:100%; height:350px; "></textarea>
                                </div>
                                
                                <div class="form-btn">
                                    <a href="#" class="cancle">취소</a>
                                    <a href="#" class="save" id="save">작성</a>
                                </div>
							</form>
                               <!-- 컨텐츠 삽입부분 -->
                            </div><!-- end itemsWrap -->
                        </div>
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