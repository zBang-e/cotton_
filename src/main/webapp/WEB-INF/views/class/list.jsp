<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
   xmlns:f="http://java.sun.com/jsf/core"
   xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Class_list</title>

<link rel="stylesheet" href="/resources/css/class/list.css">

<script>
document.addEventListener("DOMContentLoaded", () => {
    // 한 페이지에 표시할 멤버 수
    const cardsPerPage = 10; 
    let currentPage = 1; 
    const members = Array.from(document.querySelectorAll(".member-row")); // 모든 멤버 행 선택
    const totalCards = members.length; // 전체 멤버 수
    const totalPages = Math.ceil(totalCards / cardsPerPage); // 총 페이지 수
    const maxPageButtons = 10; // 한 번에 보여줄 페이지 버튼 수

    console.log("전체 멤버 수:", totalCards); // 디버깅: 전체 멤버 수 확인
    console.log("총 페이지 수:", totalPages); // 디버깅: 총 페이지 수 확인

    // 페이지 버튼 생성 및 렌더링
    function renderPagination() {
        const pagination = document.getElementById("pagination");
        pagination.innerHTML = ""; // 기존 버튼 제거

        // 이전 버튼
        const prevBtn = document.createElement("a");
        prevBtn.href = "#";
        prevBtn.innerHTML = "&laquo;";
        prevBtn.className = currentPage === 1 ? "disabled" : "";
        prevBtn.addEventListener("click", (e) => {
            e.preventDefault();
            if (currentPage > 1) {
                showPage(currentPage - 1);
            }
        });
        pagination.appendChild(prevBtn);

        // 시작 페이지와 끝 페이지 계산
        const startPage = Math.floor((currentPage - 1) / maxPageButtons) * maxPageButtons + 1;
        const endPage = Math.min(startPage + maxPageButtons - 1, totalPages);

        // 이전 그룹으로 이동 버튼 (startPage > 1이면 표시)
        if (startPage > 1) {
            const morePrev = document.createElement("a");
            morePrev.href = "#";
            morePrev.innerHTML = "...";
            morePrev.addEventListener("click", (e) => {
                e.preventDefault();
                showPage(startPage - 1); // 이전 그룹의 마지막 페이지로 이동
            });
            pagination.appendChild(morePrev);
        }

        // 숫자 버튼 생성
        for (let i = startPage; i <= endPage; i++) {
            const pageBtn = document.createElement("a");
            pageBtn.href = "#";
            pageBtn.textContent = i;
            pageBtn.className = i === currentPage ? "active" : "";
            pageBtn.addEventListener("click", (e) => {
                e.preventDefault();
                showPage(i);
            });
            pagination.appendChild(pageBtn);
        }

        // 다음 그룹으로 이동 버튼 (endPage < totalPages이면 표시)
        if (endPage < totalPages) {
            const moreNext = document.createElement("a");
            moreNext.href = "#";
            moreNext.innerHTML = "...";
            moreNext.addEventListener("click", (e) => {
                e.preventDefault();
                showPage(endPage + 1); // 다음 그룹의 첫 번째 페이지로 이동
            });
            pagination.appendChild(moreNext);
        }

        // 다음 버튼
        const nextBtn = document.createElement("a");
        nextBtn.href = "#";
        nextBtn.innerHTML = "&raquo;";
        nextBtn.className = currentPage === totalPages ? "disabled" : "";
        nextBtn.addEventListener("click", (e) => {
            e.preventDefault();
            if (currentPage < totalPages) {
                showPage(currentPage + 1);
            }
        });
        pagination.appendChild(nextBtn);
    }

    // 현재 페이지의 멤버를 표시
    function showPage(page) {
        if (page < 1) page = 1;
        if (page > totalPages) page = totalPages;

        // 모든 멤버 숨기기
        members.forEach((member) => {
            member.style.display = "none";
        });

        // 현재 페이지의 멤버만 표시
        const startIndex = (page - 1) * cardsPerPage;
        const endIndex = page * cardsPerPage;
        for (let i = startIndex; i < endIndex && i < totalCards; i++) {
            members[i].style.display = "grid"; // 'grid'를 유지하여 스타일 깨지지 않음
        }

        currentPage = page; // 현재 페이지 업데이트
        renderPagination(); // 페이지 버튼 업데이트
    }

    // 초기 로드 시 첫 페이지 표시
    showPage(currentPage);
});

</script>


</head>
<body>
   <div class="container">
   <div class="allBody">
      <div class="misHeader">
         <h4>강의 리스트</h4>
         <p>평생교육원 강의 조회 리스트</p>
      </div>

      <div class="misTitleBody">
         <div>
            <!-- <h2>공백</h2> -->
         </div>
         <div class="profileSpace">
            <p>카테고리</p>
         </div>
         <div class="idSpace">
            <p>강의명</p>
         </div>
         <div class="nameSpace">
            <p>강사명</p>
         </div>
         <div class="birthSpace">
            <p>시작일</p>
         </div>
         <div class="telSpace">
            <p>기관명</p>
         </div>
         <div class="gradeSpace">
            <p>장소</p>
         </div>
         <div class="statusSpace">
            <p>상태</p>
         </div>
         <div>
            <!-- <h2>공백</h2> -->
         </div>
      </div>

      <c:forEach items="${resultList}" var="result">
         <div class="member-row" style="border: none;">
            <form action="/class/list" method="get" class="styled-form">
               <div class="misBody">
             
                  <div>
                     <!-- <h2>공백</h2> -->
                  </div>
                  <div class="profileSpace">
                      <p>${result.category }</p>
                  </div>
                  <div class="idSpace" >
                     <p>${result.lecture}</p>
                  </div>
                  <div class="nameSpace">
                     <p>${result.teacher}</p>
                  </div>
                  <div class="birthSpace">
                     <p>${result.StartDate}</p>
                  </div>
                  <div class="telSpace">
                     <p>${result.organ}</p>
                  </div>
                  <div class="gradeSpace">
                     <p>${result.place}</p>
                  </div>
                  <div class="statusSpace">
                     <p>${result.Status}</p>
                  </div>
             
               </div>
            </form>
         </div>
      </c:forEach>
   
         <!-- 페이지 내비게이션 -->
         <div class="pageNav" id="pagination"></div>
         
         <div class="misFooter">

         </div>
      </div>
   </div>

</body>
</html>