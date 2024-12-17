<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글보기</title>
<jsp:include page="../jsp/webLib.jsp"></jsp:include>
<style type="text/css">
.dataRow>.card-header{
	background: #e0e0e0;
}

</style>

<!-- 1. 필요한 전역변수 선언 : 직접코딩 -->
<script type="text/javascript">
// 보고 있는 일반 게시판 글번호
let id = "test1";// id를 하드코딩 - member table에 등록된 id중 - 로그인 id
let no = ${vo.no};
let replyPage = 1; // 댓글의 현재 페이지
console.log("전역변수 no : " + no);
</script>

<!-- 2. 날짜 및 시간 처리함수 선언 -->
<script type="text/javascript" src="/js/dateTime.js"></script>

<script type="text/javascript">
$(function(){
	// 글수정버튼(id="updateBtn")을 클릭했을때 
	$("#updateBtn").click(function() {
		location = "updateForm.do?no=${vo.no}";
	});
	
	// 글삭제버튼(id="deleteBtn")을 클릭했을때
	// 모달창의 pw내용을 지운다.
	$("#deleteBtn").click(function() {
		$("#pw").val("");
	});
	
	// 리스트버튼(id="listBtn")을 클릭했을때
	// list.do 로 이동한다.
	// param. 으로 되어있는 값은 url에서 같이 넘어온 값(적혀있는값) - get
	$("#listBtn").click(function() {
		//alert("리스트 버튼 클릭");
		location = "list.do?page=${param.page}"
			+ "&perPageNum=${param.perPageNum}"
			+ "&key=${param.key}"
			+ "&word=${param.word}";
	});
});
</script>
</head>
<body>
<div class="container">
	<div class="card">
		<div class="card-header"><h3>공지사항 글보기</h3></div>
		<div class="card-body">
			<div class="card dataRow" data-no="${vo.no }">
				<div class="card-header">
					${vo.no }. ${vo.title }
				</div>
				<div class="card-body">
					<pre>${vo.content }</pre>
				</div>
				<div class="card-footer">
					<span class="float-right">
						게시종료일: <fmt:formatDate value="${vo.endDate }"
						pattern="yyyy-MM-dd"/>
					</span>
						게시시작일: <fmt:formatDate value="${vo.startDate }"
						pattern="yyyy-MM-dd"/><br>
					<span class="float-right">
						작성일: <fmt:formatDate value="${vo.writeDate }"
						pattern="yyyy-MM-dd"/>
					</span>
						수정일: <fmt:formatDate value="${vo.updateDate }"
						pattern="yyyy-MM-dd"/>
				</div>
			</div>
		</div>
		<div class="card-footer">
			<button class="btn btn-primary" id="updateBtn">수정</button>
			<button class="btn btn-danger" id="deleteBtn"
				data-toggle="modal" data-target="#deleteModal">삭제</button>
			<button class="btn btn-warning" id="listBtn">리스트</button>
		</div>
	</div>
	<!-- 글보기 card가 끝 -->
	
	
	
	<!-- The Modal -->
  <div class="modal fade" id="deleteModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">삭제하시겠습니까?</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- deleto.do 로 이동시 no, pw 가 필요합니다. -->
        <!-- no : hidden으로, pw: 사용자입력으로 세팅 -->
        <form action="delete.do" method="get">
        	<input type="hidden" name="no" value="${vo.no }">
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	          <button class="btn btn-danger">삭제</button>
	          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	        </div>
        </form>
      </div>
    </div>
  </div>
	
	
	
	
</div>
</body>
</html>