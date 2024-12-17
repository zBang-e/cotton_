<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>리뷰 등록하기</title>
	
	<link rel="stylesheet" href="/resources/css/review/writeForm.css">


</head>
<body>
	<input type="hidden" name="id" value="${login.id}" />
	<div class="container">
		<h4>리뷰 등록하기</h4>
		<form action="write.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="rno" value="${vo.rno}" />
			<input type="hidden" name="id" value="${login.id}" />
			<input type="hidden" name="goods_no" value="${param.goods_no}" />
			<div class="form-group">
			  <label for="sel1">해당제품을 평가해주세요.</label>
			  <select class="form-control" name="status" id="sel1">
			    <option>아주 만족해요</option>
			    <option>만족해요</option>
			    <option>보통이에요</option>
			    <option>별로에요</option>
			  </select>
			</div>
			
			<div class="titleBox">
			    <label for="rtitle">리뷰 제목</label>
			    <input class="ipt" type="text" name="title" placeholder="리뷰 제목" required>
			</div>
			
		    <div>
			    <label class="rConTit" for="content" style="width: 100px;">리뷰 내용</label>
			    <textarea class="ipt" id="content" name="content" rows="4" placeholder="리뷰 내용을 입력하세요" required></textarea>
		    </div>
		    
		    <div class="buttons">
		        <button type="button" class="back-button" onclick="history.back()" id="cancelBtn">돌아가기</button>
		        <button type="submit" class="submit-button">리뷰 등록하기</button>
		    </div>
	    </form>
	</div>
</body>
</html>