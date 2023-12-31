<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>메인 페이지</h1>

	<P>The time on the server is ${serverTime}.</P>
	<table>
		<p>
			<a href="/create">영상 입력하기</a>
		</p>
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
</body>
</html>
