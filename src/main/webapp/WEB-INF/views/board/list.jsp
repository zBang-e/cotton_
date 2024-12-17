<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet" href="/resources/css/board/list.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

 <div class="container">
        <!-- 1. 알림 영역 -->
        <div class="layer layer1">
          🎄크리스마스 이벤트가 진행 중입니다 !🎄            
        </div>

        <!-- 2. 로그인/회원가입/고객센터 -->
        <div class="layer layer2">
            <nav>
                <a href="#">로그인</a> | 
                <a href="#">회원가입</a> | 
                <a href="#">고객센터</a>
            </nav>
        </div>

        <!-- 3. 로고, 검색창, 아이콘 -->
        <div class="layer layer3">
            <div class="logo">JJANGPLAY</div>
            <input type="text" placeholder="검색어를 입력하세요" class="search-bar">
            <div class="icons">
                <span>🔔</span>
                <span>🛒</span>
            </div>
        </div>

        <!-- 4. 메뉴 -->
        <div class="layer layer4">
            <nav>
                <a href="#">카테고리</a>
                <a href="#">이벤트 및 프로모션</a>
                <a href="#">MD's pick</a>
                <a href="#">로그아웃</a>
            </nav>
        </div>

        <!-- 5. 슬라이드 그림 -->
        <div class="layer layer5">
			<div id="demo" class="carousel slide" data-ride="carousel">
				  <!-- Indicators -->
				  <ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0" class="active"></li>
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>
				  </ul>
				  
				  <!-- The slideshow -->
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="/upload/goods/mainRoom.png" alt="Los Angeles" width="700" height="430">
				    </div>
				    <div class="carousel-item">
				      <img src="/upload/goods/mainRoom2.png" alt="Chicago" width="700" height="430">
				    </div>
				    <div class="carousel-item">
				      <img src="/upload/goods/mainRoom3.png" alt="New York" width="700" height="430">
				    </div>
				  </div>
				  
				  <!-- Left and right controls -->
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>
        </div>

        <!-- 6. 상품 내용 -->
        <div class="layer layer6">
            <div class="product">
            <image src="/upload/goods/L01.png">
                <h3>추천 상품</h3>
                <p>상품명: 멋진 상품</p>
                <p>가격: 10,000원</p>
                <button>구매하기</button>
            </div>
        </div>
    </div>

</body>

</html>