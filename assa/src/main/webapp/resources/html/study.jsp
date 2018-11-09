<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="contents-wrap study active">
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
	                                      
	                                   </tbody>
	                               </table>
	                               <a href="#" class="writeBtn">글쓰기</a>
	                               <nav class="text-center">
									  <ul class="pagination">
									   
									  </ul>
	                                </nav>
	                                 <div class="searchWrap">
	                                 	 <form action="" id="search">
		                                      <select class="form-control" id="searchType">
		                                          <option value="title" selected>제목</option>
		                                          <option value="writer">글쓴이</option>
		                                      </select>
		                                      <input type="text" class="form-control" id="searchContent" placeholder="Search for...">
		                                      <span class="input-group-btn">
		                                        <button class="btn btn-default" type="button" id="searchBtn"><i class="fas fa-search"></i></button>
		                                      </span>
	                                      </form>
	                                 </div>
	                            </div>
	                        </div>
	                        
                        </div>
                        <div class="contents-wrap study-write">
                        	  <div class="items">
	                            <div class="itemsWrap">
	                       
									<h2 class="contentsTitle">스터디</h2>
								<form id="insert_form" action="/board/insertBoard.do" method="post"  enctype="multipart/form-data" acceptcharset="UTF-8">
									<input name="writer" id="insert_writer" value="${member.nickname}" type="hidden">
									<input name="category" id="insert_category" value="1" type="hidden">
									<div class="form-group">
	                                    <label for="insert_title" class="control-label">글 제목</label>
	                                    <input class="input form-control" type="text" name="title" id="insert_title" placeholder="글 제목"/>
	                                </div>
									<div class="form-group contentForm">
	                                    <label for="insert_content" class="control-label">글 내용</label>                       
	                                    <textarea rows="10" cols="30" id="insert_content" name="content" style="width:100%; height:350px; "></textarea>
	                                </div>
	                               
	                                <div class="form-group">
	                                    <label for="insert_attach" class="control-label">파일첨부</label>
	                                    <input type="file" name="file" id="insert_file" class="form-control">
	                                </div>
	                                <div class="form-btn">
	                                    <a href="#" class="cancle">취소</a>
	                                    <a href="#" class="save" id="insert">작성</a>
	                                </div>
								</form>
	                               <!-- 컨텐츠 삽입부분 -->
	                            </div><!-- end itemsWrap -->
	                        </div>
                        </div>
                        <div class="contents-wrap study-modify">
                        	  <div class="items">
	                            <div class="itemsWrap">
	                       
									<h2 class="contentsTitle">스터디</h2>
								<form id="modifyForm" action="/board/insertBoard.do" method="post"  enctype="multipart/form-data" acceptcharset="UTF-8">
									<input name="no" id="modify_no" value="" type="hidden">
									<div class="form-group">
	                                    <label for="study_title" class="control-label">글 제목</label>
	                                    <input class="input form-control" type="text" name="title" id="modify_title" placeholder="글 제목"/>
	                                </div>
									<div class="form-group contentForm">
	                                    <label for="study_content" class="control-label">글 내용</label>                       
	                                    <textarea rows="10" cols="30" id="modify_content" name="content" style="width:100%; height:350px; "></textarea>
	                                </div>
	                                <div class="form-group">
	                                    <label for="study_attach" class="control-label">파일첨부</label>
	                                    <input type="file" name="file" id="study_file" class="form-control">
	                                </div>
	                                <div class="form-btn">
	                                    <a href="#" class="cancle">취소</a>
	                                    <a href="#" class="save" id="modify">수정</a>
	                                </div>
								</form>
	                               <!-- 컨텐츠 삽입부분 -->
	                            </div><!-- end itemsWrap -->
	                        </div>
                        </div>
                        <div class="contents-wrap study-detail">
                        	<div class="items">
	                            <div class="itemsWrap">
	                               <!-- 컨텐츠 삽입부분 -->
	                               <h2 class="contentsTitle">스터디</h2>
	                               <div class="detailBox">
	                                   <div class="detailHead">
	                                       <div class="titleBox">
	                                           <dl>
	                                               <dt>Title</dt>
	                                               <dd></dd>
	                                           </dl>
	                                       </div>
	                                       <div class="infoBox">
	                                           <ul>
	                                               <li class="date"></li>
	                                               <li class="name"></li>
	                                               <li class="hit"></li>
	                                           </ul>
	                                       </div>
	                                   </div>
	                                   <div class="detailBody">
	                                       <div class="content">
	                                            
	                                       </div>
	                                       <div class="attachList">
	                                           <ul>
	                                               <li>
	                                               	
	                                               </li>
	                                           </ul>
	                                       </div>
	                                   </div>
	                                   <div class="detailFooter">
	                                       <div class="commentForm">
	                                           <form action="" id="commentForm">
	                                           		<input type="hidden" id="commentBoardNo" name="boardNo" >
	                                           		<input type="hidden" id="commentWriter" name="commentWriter" value="${member.nickname}">
	                                               <textarea name="commentContent" id="commentContent" cols="30" rows="5" class="form-control"></textarea>
	                                               <a href="#" id="commentFormBtn">댓글 남기기</a>
	                                           </form>
	                                       </div>
	                                       <ul class="commentList">
	                                           
	                                        </ul>
	                                   </div>
	                               </div>
	                               <div class="detailBtnBox">
	                                   <div class="btnLeft">
	                                     <a href="#" class="prev">이전글</a>
	                                     <a href="#" class="next">다음글</a>
	                                   </div>
	                                   <div class="btnRight">
	                                       <a href="#" class="deleteBtn">삭제</a>
	                                       <a href="#" class="modifyBtn">수정</a>
	                                       <a href="#" class="listBtn">목록</a>
	                                   </div>
	                               </div>
	                            </div><!-- end itemsWrap -->
	                        </div>
                        </div>
                        <script type="text/javascript">
    //스터디 게시판 리스트
 	   $(function(){
 			pageMove(1)
		})
    // 리스트 끝
		
    	$("#searchBtn").click(function(){
    		pageMove(1)
    	})
	//목록 버튼
		 $(".listBtn").click(function(){
			$(".contents-wrap").removeClass("active")
			$(".contents-wrap.study").addClass("active")
			pageMove(1);
		}) 
		$(".cancle").click(function(){
			$(".contents-wrap").removeClass("active")
			$(".contents-wrap.study").addClass("active")
			pageMove(1);
		})
	//목록 버튼 끝
	  
		$(".writeBtn").click(function(){
			//여기에 ajax 구축
			$(".contents-wrap").removeClass("active")
			$(".contents-wrap.study-write").addClass("active")
			callForm("insert")
		      //저장버튼 클릭시 form 전송
		     if($(".form-group").find("iframe").length>1){
			     $(".form-group").find("iframe").eq(0).remove();
		     }
		    
		})
		
		//댓글 입력
		$("#commentFormBtn").click(function(){
			insertComment()
		})
		
		
		//ajax 처리
		//페이지 이동
		function pageMove(pageNo){
		  waitMe();
		  
		  var searchWord = '';
		  if($("#searchContent").val() == ''){
			searchWord = 'null'			  
		  }else{
			  searchWord = $("#searchContent").val()
		  }
    	  $.ajax({
		 		url : "/assa/study/board_list.json",
		 		data : "category=1&pageNo="+pageNo+"&type="+$("#searchType").val()+"&content="+searchWord
		 	}).done(function(data){
		 		//console.log(data)
		 		var html;
				for(var b of data.list){
					
					html +="<tr>"
					html +="<td>"+b.no+"</td>"
					html +="<td><a href='#' data-href='"+b.no+"'>"+b.title+"</a></td>"
					html +="<td>"+b.writer+"</td>"
					html +="<td>"+b.count+"</td>"
					html +="<td>"+b.regDate+"</td>"
					html +="</tr>"
				}
				$(".table.list > tbody").html(html);	
				/* $("a").click(function(){
					var no = $(this).data("href")
					detail(no)
				}) */
				if(data.pageResult!=0){
	 				var pHtml = '';
	 				var active;
	 				if((parseInt(data.pageResult.beginPage)-1)!=0){
	 					pHtml+="<li><a href='#' data-href='"+(parseInt(data.pageResult.beginPage)-1)+"'><span aria-hidden='true'>&laquo;</span></a></li>"
	 				}
	 				for(var i = data.pageResult.beginPage; i<=data.pageResult.endPage; i++){
	 					active = "";
	 					if(i==data.pageResult.pageNo){
	 						active = "active"
	 					}
	 					pHtml +="<li class='"+active+"'>"
	 					pHtml +="<a href='#' data-href='"+i+"'>"+i+"</a>"
	 					pHtml +="</li>"
	 				}
				    pHtml+="<li><a href='#' data-href='"+(parseInt(data.pageResult.endPage)+1)+"'><span aria-hidden='true'>&raquo;</span></a></li>"
	 			}
				$(".pagination").html(pHtml)
				$(".pagination li a").click(function(e){
					  e.preventDefault();
					  pageMove($(this).data("href"))
			 	 })
			 	$(".table.list> tbody > tr > td > a").click(function(e){
			 		e.preventDefault();
			 		detail($(this).data("href"))
			 		$(".contents-wrap").removeClass("active")
					$(".contents-wrap.study-detail").addClass("active")
			 	})
			 	$(".contentsBody .items").waitMe("hide")
		 	})
    	}
    	
    	// 게시물 디테일
    	function detail(no){
    		waitMe();
    		$(".itemsWrap").scrollTop(0)
    		$(".detailHead .titleBox dd").html("")
    		$(".infoBox li.date").html("")
    		$(".infoBox li.name").html("")
    		$(".infoBox li.hit").html("")
    		$(".detailBody .content").html("")
    		$(".attachList ul li").html("")
    		$.ajax({
    			url : "/assa/study/board_detail.json",
    			data : "no="+no
    		}).done(function(data){
    			//console.log(data)
    			$(".detailHead .titleBox dd").html(data.board.title)
    			$(".infoBox li.date").html(data.board.regDate)
    			$(".infoBox li.name").html("by "+data.board.writer)
    			$(".infoBox li.hit").html("hit "+data.board.count)
    			$(".detailBody .content").html(data.board.content)
    			$(".contentsBody .items").waitMe("hide")
    			var attachHtml="";
    			for(a of data.attachList){
    				attachHtml +="<a href='/assa/file/"+a.fileName+"' download>"+a.oriName+"</a>"
    			}
    			$(".attachList ul li").html(attachHtml)
    			$("#commentBoardNo").val(data.board.no)
    			
    			prevNext(no,data.board.category)
    			
    			commentList(data.board.no)
    			
    			
    			$(".deleteBtn").click(function(){
    				deleteBoard(data.board.no)
    			})
    			$(".modifyBtn").click(function(){
    				modifyBoard(data.board.no)
    			})
    			$(".listBtn").click(function(){
    				
    			})
    		})
    		
    		
    	}
    	
    	//댓글 로드
    	function commentList(boardNo){
    		waitMe();
    		$.ajax({
    			url : "/assa/study/comment_list.json",
    			data :"boardNo="+boardNo
    		}).done(function(data){
    			var html="";
    			//console.log(data)
    			for (var b of data){
    				html+='<li><div class="commentBox"><div class="commentHead"><div class="infoBox"><dl>'
    				html+='<dt class="name">'+b.commentWriter+'</dt>'
    				html+='<dd>'+b.commentRegDate+'</dd>'
    				html+='</dl></div><div class="btnBox"><a href="#" class="commentModify" data-target="'+b.commentNo+'">수정</a> | <a href="#" class="commentDelete" data-target="'+b.commentNo+'">삭제</a>'
    				html+='</div></div><div class="commentBody">'+b.commentContent+'</div></div></li>'
    			}
    			$(".commentList").html(html)
    			$(".commentDelete").click(function(e){
					deleteComment($(this).data("target"))
					e.preventDefault();
				})		
    			$(".contentsBody .items").waitMe("hide")
    		})
    	}
    	
    	function prevNext(no, category){
    		$(".detailBtnBox .next").attr("onclick","").css({"display":"inline-block"})
			$(".detailBtnBox .prev").attr("onclick","").css({"display":"inline-block"})
    		$.ajax({
    			url : "/assa/study/board_prev_next.json",
    			data : "no="+no+"&category="+category
    		}).done(function(data){
    			console.log(data)
    			if(no!=0 && data.length==1){
    				$(".detailBtnBox .prev").attr("onclick","detail("+data[0]+")")
    				$(".detailBtnBox .next").css({"display":"none"})
    			}else if(no!=0 && data.length==1){
    				$(".detailBtnBox .next").attr("onclick","detail("+data[0]+")")
    				$(".detailBtnBox .prev").css({"display":"none"})
    			}else{
    				$(".detailBtnBox .next").attr("onclick","detail("+data[0]+")")
        			$(".detailBtnBox .prev").attr("onclick","detail("+data[1]+")")
    			}
    		})
    	}
    	
    	//글 입력
    	function insertBoard(){
    		waitMe();
    		var formData = new FormData($("#insert_form")[0]);
    		
    		 $.ajax({
    			url : "/assa/study/board_write.json",
    			data : formData,
    			type : "POST",
                processData : false,
                contentType : false
    		}).done(function(data){
    			detail(data)
		 		$(".contents-wrap").removeClass("active")
				$(".contents-wrap.study-detail").addClass("active")
				$(".contentsBody .items").waitMe("hide")
    		}) 
    	}
    	function deleteBoard(no){
    		waitMe();
    		$.ajax({
        		url : "/assa/study/board_delete.json",
        		data : "no="+no
       		}).done(function(data){
       			pageMove(1);
       			$(".contents-wrap").removeClass("active")
    			$(".contents-wrap.study").addClass("active")
       		})
    	}
    	//댓글 입력
    	function insertComment(){
    		waitMe();
    		var formData = new FormData($("#commentForm")[0]);
    		for (var value of formData.values()) {
 			   console.log(value); 
 			}
    		$.ajax({
    			url : "/assa/study/comment_write.json",
    			data : formData,
    			type : "POST",
                processData : false,
                contentType : false
    		}).done(function(data){
    			$("#commentContent").val("");
    			commentList($("#commentBoardNo").val());
    			$(".contentsBody .items").waitMe("hide")
    		})
    	}
    	
    	//댓글 삭제
    	function deleteComment(commentNo){
    		waitMe();
    		$.ajax({
    			url : "/assa/study/comment_delete.json",
    			data : "commentNo="+commentNo
    		}).done(function(data){
    			commentList($("#commentBoardNo").val());
    			$(".contentsBody .items").waitMe("hide")
    		})
    	}
    	
    	function modifyBoard(no){
    		waitMe();
    		$.ajax({
    			url : "/assa/study/board_detail.json",
    			data : "no="+no
    		}).done(function(data){
    			$(".contents-wrap").removeClass("active")
    			$(".contents-wrap.study-modify").addClass("active")
	            $("#modify_no").val(data.board.no)
	            $("#modify_title").val(data.board.title)
	            
    			callForm("modify",data.board.content)
    			if($(".form-group").find("iframe").length>1){
	   			     $(".form-group").find("iframe").eq(0).remove();
	   		     }
    		      //저장버튼 클릭시 form 전송
   		        $(".contentsBody .items").waitMe("hide")
    		})
    		
    	}
    	
    	function updateBoard(){
    		waitMe();
    		var formData = new FormData($("#modifyForm")[0]);
    		 $.ajax({
    			url : "/assa/study/board_update.json",
    			data : formData,
    			type : "POST",
                processData : false,
                contentType : false
    		}).done(function(data){
    			detail(data)
		 		$(".contents-wrap").removeClass("active")
				$(".contents-wrap.study-detail").addClass("active")
    		}) 
    	}
    	
    	//lazy Load
    	function waitMe(){
    		$(".contentsBody .items").waitMe({
				effect : 'win8',
				text : 'Loding',
				bg : 'rgba(0,0,0,0.3)',
				color : '#ffffff',
				fontSize : '32px'
			});
    	}
    	
    	function callForm(area,content){
    		if(content == undefined){
    			content = ""
    		}
    		 var oEditors = [];
    		
    		
    		 nhn.husky.EZCreator.createInIFrame({
 		          oAppRef: oEditors,
 		          elPlaceHolder: area+"_content", //textarea에서 지정한 id와 일치해야 합니다. 
 		          //SmartEditor2Skin.html 파일이 존재하는 경로
 		          sSkinURI: "/assa/resources/se2/SmartEditor2Skin.html",  
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
 		              oEditors.getById[area+"_content"].exec("PASTE_HTML", [content]);
 		          },
 		          fCreator: "createSEditor2"
 		      });

 			 $("#"+area).click(function(){
 				
 				 oEditors.getById[area+"_content"].exec("UPDATE_CONTENTS_FIELD", []);
 				var content = $("#"+area+"_content").val();
 				 if($("input[name=title]").val()==""){
		        	alert("제목을 입력해 주세요")
		        	$("#"+area+"_title").focus()
		        	return;
		         }
 				if( content == ""  || content == null || content == '&nbsp;' || content == '<p>&nbsp;</p>')  {
 		             alert("내용을 입력해주세요.");
 		             oEditors.getById[area+"_content"].exec("FOCUS"); //포커싱
 		             return;
 		        }
		          if(area == "insert"){
		        	  insertBoard();	  
		          }else if(area=="modify"){
		        	  updateBoard();
		          }
		      });   
    	}
	</script>