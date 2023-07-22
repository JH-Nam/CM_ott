<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>영상 목록</title>
</head>
<body>
	<h1>영상 목록</h1>
	<p>
	<form>
		<input type="text" placeholder="검색" name="keyword" value="${keyword}" />
		<input type="submit" value="검색" />
	</form>
	</p>
	<table>
		<thead>
			<tr>
				<td>영상 URL</td>
				<td>제목</td>
				<td>정보</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${data}">
				<tr>
					<td><a href="/detail?ottId=${row.ott_id}"> ${row.url}</a></td>
					<td>${row.title}</td>
					<td>${row.info}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="/create">생성</a>
	</p>
	<p>
		<a href="/">메인 화면으로 돌아가기</a>
	</p>
</body>
</html>