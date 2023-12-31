<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${board.title}</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	<link rel="stylesheet" type="text/css" href="resources/css/view.css?">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="resources/ckeditor/ckeditor.js"></script>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	function updateB() {
		var bno=$("#bno").val();
		var title=$("#title").val();
		var content=CKEDITOR.instances.content.getData();
		var titleLength=title.length;
		if(!title) {
			swal("error", "제목을 입력하세요.", "error");
		} else if(titleLength>50) {
			swal("", "제목이 너무 깁니다.", "error");
		} 
		else if(content == ""){ 
			swal("error", "글내용을 입력해 주세요!!.", "error");
			return false; 
		}
		else {
			swal({
				icon: "warning",
				text: "정말 수정 하시겠습니까?",
				closeOnClickOutside : false,
				closeOnEsc : false, 
				buttons: ["돌아가기", "수정 완료!"],
			}).then(function(isConfirm) {
				if (isConfirm) {
					swal('수정 완료!','게시글 수정을 완료했습니다.^^','success').then(function(isConfirm){
						$.ajax({
							type : "POST",
							url : "updateBoard",
							data : {
								"bno" : bno,
								"title" : title,
								"content" : content
							}, success : function(data) {
								location.href="view?bno="+bno+"&show=Y";
							}
						});
					});
				}
			})
		}
	}
	//키보드로 글자수 입력 받았을 때 글자카운트 스크립트
	$(document).ready(function(){
		/* 키보드 이벤트 활용 */
		$('#title').keyup(function(){
			// 남은 글자수를 구한다.
			var titleLength = $(this).val().length; //현재 글자수
			var remain = 50 - titleLength;
			
			// 문서 객체에 남은 글자수 표시
			$('#titleCount').html(remain);
			
			if(remain>=0){
				$('#titleCount').css('color', 'green');
			}else{
				$('#titleCount').css('color', 'red');
			}if(remain<0) {
				swal("", "제목은 한글기준 50자 까지만 쓸 수 있습니다.", "warning");
			}
		})
	})
</script>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<center>
		<div style="width:800px; padding-top: 60px; padding-bottom: 60px;" >
			<div style="float:right;"></div>
			<form>
				<input type="hidden" name="bno" id="bno" value="${board.bno}"/>
				<table border="1" bordercolor="#E1DCDC" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td style="/* background-color: rgb(31,169,255); color:white; */ width:70px; height:30px; text-align:center;">제목</td>
						<td align="left">
							<input type="text" name="title" id="title" size="70%" maxlength="100" value="${board.title}" />
							<span id="titleCount" style="color: rgb(31,169,255);">50</span><span>/50</span>
						</td>
					</tr>
					<tr>
						<td style="/* background-color: rgb(31,169,255); color:white; */ width:70px; height:30px; text-align:center;">작성자</td>
						<td align="left">${board.writer}</td>
					</tr>
					<tr>
						<td style="/* background-color: rgb(31,169,255); color:white; */ width:70px; height:30px; text-align:center;">작성일</td>
						<td align="left">${board.regdate}</td>
					</tr>
					<tr>
						<td style="/* background-color: rgb(31,169,255); color:white; */ width:70px; height:30px; text-align:center;">조회수</td>
						<td align="left">${board.viewcnt}</td>
					</tr>
					<tr>
						<td colspan="2" align="left" height="400px">
							<textarea name="content" id="content" cols="88" rows="80">${board.content}</textarea>
<script>
	CKEDITOR.replace( 'content', {} );
</script>
						</td>
					</tr>
				</table><br/><br/>
				<input id="list_btn" type="button" value="저장" onclick="updateB()" />
			</form>
			<button id="list_btn" style="float:right; margin-top:-40px;"  onclick="location.href='board'">목록</button>
		</div>
	</center>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>