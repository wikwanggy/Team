/**
 * 
 */
$(document).ready(function(){
	/*$("#uploadbtn").on("click",function(){
		alert("aaa");
		if($("input[name='title']").val().trim() == ''){
			alert("제목을 입력하세요.");
			$("input[name='title']").focus();
			return false;
		}
	})*/
	//검색
	$("#searching").on("click",function(){
		//pageNum을 1로 초기화한 후
		$("input[name='pageNum']").val("1");
		//form태그를 submit
		$("#searchForm").submit();
	})
	//댓글
	var bnoval=$("input[name='bno']").val();
	
	list(bnoval);
	
	$("#replywrt").on("click",function(){
		var replyval=$("#reply").val();
		var idval="qwer1234";
		
		if(replyval==''){
			alert("내용을 입력하세요.");
			return;
		}
		
		replywrt({bno:bnoval,reply:replyval,id:idval});
		
		console.log(replyval);
	})
	$("#chat").on("click",".remove",function(){
		var rno=$(this).data("rno");
		var result=confirm("삭제 후엔 복구할 수 없습니다. 정말 삭제하시겠습니까?");
		if(result){
			remove(rno);
		}
	})
	$("#chat").on("click",".update",function(){
		var rno=$(this).data("rno");
		var reply=$('#replycontent'+rno).val();
		if(reply==''){
			alert("내용을 입력하세요.");
			return;
		}
		modify({rno:rno,reply:reply});
	})
})
function replywrt(reply){
	console.log(reply);
	$.ajax({ //ajax (비동기식 처리)
		type:"post", // method방식(get, post, put, delete)
		url:"/commreply/new", // controller의 value(url주소예시:/sample/getText)
		data:JSON.stringify(reply),
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				//alert("작성 성공");
				location.reload();
			}
		}
	})
}
function list(bno){
	//alert(bno)
	//↓type=get, data=JSON
	$.getJSON("/commreplies/"+bno+".json", function(data){
		var str="";
		
		for(var i=0;i<data.length;i++){
			str+="<li>"
			str+=data[i].id+"<span> | </span><span>"+data[i].replydate+"</span>"
			str+="<pre><textarea cols='115' id='replycontent"+data[i].rno+"'>"+data[i].reply+"</textarea></pre>"
			str+="<input type='button' class='update' id='reply_btn' value='수정' data-rno='"+data[i].rno+"' data-reply='"+data[i].reply+"'>"
			str+="<input type='button' class='remove' id='reply_btn' value='삭제' data-rno='"+data[i].rno+"'>"
			str+="</li>"
		}
	$("#replyUL").html(str);
	})
}
function remove(rno){
	$.ajax({
		type:"delete",
		url:"/commreplies/remove/"+rno,
		success:function(result){
			if(result=="success"){
				//alert("삭제가 완료되었습니다.");
				location.reload();
			}
		}
	})
}
function modify(reply){
	console.log(reply);
	$.ajax({
		type:"put",
		url:"/commreplies/modify",
		data:JSON.stringify(reply),
		contentType:"application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				location.reload();
			}
		}
	})
}