<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News List</title>
</head>
<body>
<div>
	<div class="card-header"> header</div>
		<div class="card-body">
			<ul>
				<c:forEach var="result" items="${resultList }">
					<li>
						<a href="${result.link }">${result.title }</a>
						/${result.press }/${result.date }
					</li>
				</c:forEach>
			</ul>
		</div>
	<div class="card-footer"> footer</div>
</div>
</body>
</html>