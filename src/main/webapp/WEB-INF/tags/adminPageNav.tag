<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="pageObject" required="true"
 type="org.zerock.util.page.PageObject" %>
<%@ attribute name="listURI" required="true"
 type="java.lang.String" %>
<%@ attribute name="query" required="false"
 type="java.lang.String" %> 

<% /** PageNation을 위한 사용자 JSP 태그  *
    * Bootstrap 4 
    
    * query 데이터가 있는 경우 - 일반 게시판 페이지 정보로 사용한다. (int=1 --> int=0 으로 바꿔서 사용)
    *   - listURI="list.do"
    *    - query 정보는 페이지 정보 외에 전달할 다른 정보가 있으면 &key=value 형식으로 작성한다.
    * 사용방법 :<pageObject:pageNav listURI="list"
             pageObject= "페이지 객체" query="일반 게시판 페이지 정보 외 다른 전달 정보" />
   */ %>

<% request.setAttribute("noLinkColor", "#999"); %>
<% request.setAttribute("tooltip", " data-toggle=\"tooltip\" data-placement=\"top\" "); %>
<% request.setAttribute("noMove", " title=\"no move page!\" "); %>

<style>
.page-item.active .page-link {
    z-index: 3;
    color: #ffffff;
    background-color: #333;
    border-color: #333;
}

.page-link {
    position: relative;
    display: block;
    padding: 0.5rem 0.75rem;
    margin-left: -1px;
    line-height: 1.25;
    color: #333;
    background-color: #ffffff;
    border: none;
}

</style>

<ul class="pagination">
   
   <li data-page="${pageObject.page -1 }"  class="page-item">
      <c:if test="${pageObject.page > 1 }">
           <a href="${listURI }?page=${pageObject.page - 1 }&${pageObject.notPageQuery}${query}"
             title="click to move previous page group!" ${tooltip } 
             class="page-link">
              <i class="fa fa-caret-left"></i>
           </a>
        </c:if>
      <c:if test="${pageObject.page == 1 }">
           <a href="" onclick="return false" class="page-link"
            ${noMove } ${tooltip }>
              <i class="fa fa-caret-left" style="color: ${noLinkColor};"></i>
           </a>
        </c:if>
     </li>
   <c:forEach begin="${pageObject.startPage }" end="${pageObject.endPage }" var="cnt">
     <li ${(pageObject.page == cnt)?"class=\"active page-item\"":" class=\"page-item\"" } 
      data-page=${cnt } >
         <!-- 페이지와 cnt가 같으면 링크가 없음 -->
         <c:if test="${pageObject.page == cnt }">
           <a href="" onclick="return false" class="page-link"
            ${noMove } ${tooltip }>${cnt}</a>
         </c:if>
         <!-- 페이지와 cnt가 같지 않으면 링크가 있음 -->
         <c:if test="${pageObject.page != cnt }">
           <a href="${listURI }?page=${cnt }&${pageObject.notPageQuery}${query}"
            title="click to move ${cnt } page" ${tooltip }
            class="page-link">${cnt}</a>
        </c:if>
     </li>
   </c:forEach>
     <li data-page="${pageObject.page + 1 }"  class="page-item">
   <c:if test="${pageObject.page < pageObject.totalPage }">
        <a href="${listURI }?page=${pageObject.page + 1 }&${pageObject.notPageQuery}${query}"
          title="click to move next page group!" ${tooltip }
          class="page-link">
           <i class="fa fa-caret-right"></i>
        </a>
     </c:if>
   <c:if test="${pageObject.page == pageObject.totalPage }">
        <a href="" onclick="return false" class="page-link"
         ${noMove }  ${tooltip } >
           <i class="fa fa-caret-right" style="color: ${noLinkColor};"></i>
        </a>
     </c:if>
     </li>

</ul> 

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
  $(".pagination").mouseover(function(){
//         $(".tooltip > *:last").css({"background-color": "red", "border": "1px dotted #444"});   
   });
});
</script>