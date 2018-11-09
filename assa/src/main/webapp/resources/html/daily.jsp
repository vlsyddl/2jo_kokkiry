<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="contents-wrap daily active">
                        	 <div class="items">
	                            <div class="itemsWrap">
	                               <!-- 컨텐츠 삽입부분 -->
	                               <h2 class="contentsTitle">일상 <a href="#" class="writeBtn">글쓰기</a></h2>
	                               <ul class="dailyList">
	                              	<!-- 일상게시판 리스트 -->
	                                  
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
                            
								<h2 class="contentsTitle">일상</h2>
							<form id="insert_form" action="/board/insertBoard.do" method="post"  enctype="multipart/form-data" acceptcharset="UTF-8">
									<input name="writer" id="insert_writer" value="${member.nickname}" type="hidden">
									<input name="category" id="insert_category" value="2" type="hidden">
									<div class="form-group">
	                                    <label for="insert_title" class="control-label">글 제목</label>
	                                    <input class="input form-control" type="text" name="title" id="insert_title" placeholder="글 제목"/>
	                                </div>
									<div class="form-group contentForm">
	                                    <label for="insert_content" class="control-label">글 내용</label>                       
	                                    <textarea rows="10" cols="30" id="insert_content" name="content" style="width:100%; height:350px; "></textarea>
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
                       
                       <div class="contents-wrap daily-modify">
                        	  <div class="items">
	                            <div class="itemsWrap">
	                       
									<h2 class="contentsTitle">일상</h2>
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
	                            
	                                <div class="form-btn">
	                                    <a href="#" class="cancle">취소</a>
	                                    <a href="#" class="save" id="modify">수정</a>
	                                </div>
								</form>
	                               <!-- 컨텐츠 삽입부분 -->
	                            </div><!-- end itemsWrap -->
	                        </div>
                        </div>
                       
           <script type="text/javascript">
     		// 댓글 목록
     		$(function () {
     			dailyList(1);
     		})
     		
     		var nextPageNo = 2;
     		var lastPage = 0;
     		
     		$(".writeBtn").click(function(){
    			//여기에 ajax 구축
    			$(".contents-wrap").removeClass("active")
    			$(".contents-wrap.daily-write").addClass("active")
    			callForm("insert")
    		      //저장버튼 클릭시 form 전송
    		     if($(".form-group").find("iframe").length>1){
    			     $(".form-group").find("iframe").eq(0).remove();
    		     }
    		    
    		})
    		
    		
     		
    		$(".cancle").click(function () {
		 			$(".contents-wrap").removeClass("active")
			 		$(".contents-wrap.daily").addClass("active")
		 		})
     		
     		// boardList
     		function dailyList(pageNo){
     			waitMe();
   	    	  	$.ajax({
     			 		url : "/assa/study/board_list.json",
     			 		data : "category=2&pageNo="+pageNo+"&type=title&content=null"
     			}).done(function(data){
     				var html="";
					for(var b of data.list){
						html +="<li>"
                        html += "<div class='dailyBox'>"
                        html += "<div class='dailyHead'>"
                        html += '<div class="titleBox">'
                        html +=  b.title 
                        html += '</div>'
                        html += '<div class="infoBox">'
                        html += '<span class="name">'+ b.writer + '</span>'
                        html += '<span class="date">' +b.regDate + '</span>'
                        html += '</div>'
                        html +="<div class='btnBox'>"
                        html +='<a href="#" onclick="deleteBoard('+ b.no +')" >' + "삭제" + '</a>'
                        html += "||"
                        html +='<a href="#" onclick="modifyBoard('+ b.no +')" >' + "수정" + '</a>'
                        html += "</div>"
                        html += '</div>'
                        html += '<div class="dailyBody">'
                        html += b.content
                        html += '</div>'   
                        html += '<div class="dalyFooter">'
                        html += '<div class="likeBox">'
                        html += '<a href="#" class="like like'+b.no+'" data-no="'+b.no+'">'
                        html += '<i class="far fa-thumbs-up"></i>'
                        html += "좋아요" 
                        html += "</a>"
                        html += '<span class="commNum">'
                        html += "댓글" + b.count
                        html += '</span>'
                        html += '</div>'
                        html += '<div class="commentForm">'
                        html += '<form action="" class="commentForm'+b.no+'">'
                        html += '<input type="hidden" name="commentWriter" value="${member.nickname}">'
                        html += '<input type="hidden" name="boardNo"  value="'+b.no+'">'
                        html += ' <textarea name="commentContent"  cols="30" rows="5" class="form-control"></textarea>'
                        html += '<a href="#" onclick="insertComment('+b.no+')" class="commentFormBtn">' + '댓글 남기기' + '</a>'
                        html += '</form>'
                        html += '</div>'
                        html += '<ul class="commentList list'+b.no+'">'
                        html += '</ul>'
                        html +='</div>'
                        html += '</div>'
                        html+= "</li>"
                        commentList(b.no)
                        selectRecomm(b.no)
                        
					}
					$("ul.dailyList").html($("ul.dailyList").html()+html);
					$(".contentsBody .items").waitMe("hide")
					$(".dailyMode a").click(function(){
						nextPage(data.pageResult.lastPage);
					})
					$(".like").click(function(){
                     	if($(this).hasClass("on")){
                     		deleteRecomm($(this).data("no"));
                     		alert("추천 취소 되었습니다");
                     	}else{
                     		insertRecomm($(this).data("no"));
                     		alert("추천 되었습니다");
                     	}   	
                     })
     			})
     			
     		};
			// end boardList     		
     		
     		//다음 10개
     		function nextPage(lastPage){
				
     			console.log(lastPage)
     			if(nextPageNo>=lastPage){
     				alert("마지막 페이지 입니다.")
     				return false;
     			}
     			dailyList(nextPageNo);
     			nextPageNo ++;	     			
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
    			$(".commentList.list"+boardNo).html(html)
    			$(".commentDelete").click(function(e){
					deleteComment($(this).data("target"),boardNo)
					e.preventDefault();
				})		
    			$(".contentsBody .items").waitMe("hide")
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
    			dailyList(1)
    			nextPageNo = 2;
		 		$(".contents-wrap").removeClass("active")
				$(".contents-wrap.daily").addClass("active")
				$(".contentsBody .items").waitMe("hide")
    		}) 
    	}
    	
    	//댓글 입력
    	function insertComment(no){
    		waitMe();
    		var formData = new FormData($(".commentForm" + no)[0]);
    		console.log(formData)
    		$.ajax({
    			url : "/assa/study/comment_write.json",
    			data : formData,
    			type : "POST",
                processData : false,
                contentType : false
    		}).done(function(data){
    			$("#commentContent").val("");
    			commentList(no);
    			$(".contentsBody .items").waitMe("hide")
    		})
    	}
				function deleteBoard(no){
		    		waitMe();
		    		$.ajax({
		        		url : "/assa/study/board_delete.json",
		        		data : "no="+no
		       		}).done(function(data){
		       			dailyList(1)
		 				alert("게시물이 삭제되었습니다.")
		       		})
		    	}
		 		 
		 		//댓글 삭제
		     	function deleteComment(commentNo,boardNo){
		     		waitMe();
		     		$.ajax({
		     			url : "/assa/study/comment_delete.json",
		     			data : "commentNo="+commentNo
		     		}).done(function(data){
		     			commentList(boardNo);
		     		})
		     	}
		     	
		 	
		 	
		 	function modifyBoard(no){
	    		waitMe();
	    		$.ajax({
	    			url : "/assa/study/board_detail.json",
	    			data : "no="+no
	    		}).done(function(data){
	    			$(".contents-wrap").removeClass("active")
	    			$(".contents-wrap.daily-modify").addClass("active")
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
		 	
		 	function selectRecomm(no){
		 		$.ajax({
		 			url : "/assa/study/select_recomm.json",
		 			data : "no="+no+"&recommName=${member.nickname}"
		 		}).done(function(data){
		 			console.log(data)
		 			if(data!=""){
		 				$(".like"+no).addClass("on")
		 			}
		 		})
		 	}
		 	
		 	function insertRecomm(no){
				$.ajax({
					url : "/assa/study/insert_recomm.json",
					data : "no="+no+"&recommName=${member.nickname}"
				}).done(function(data){
					$(".like"+no).addClass("on")
				})		 		
		 	}
		 	function deleteRecomm(no){
				$.ajax({
					url : "/assa/study/delete_recomm.json",
					data : "no="+no+"&recommName=${member.nickname}"
				}).done(function(data){
					$(".like"+no).removeClass("on")
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
	    			dailyList(1)
			 		$(".contents-wrap").removeClass("active")
					$(".contents-wrap.daily").addClass("active")
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