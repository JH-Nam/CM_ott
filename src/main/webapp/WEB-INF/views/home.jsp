<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html data-theme="light">
<head>
    <title>Home</title>

    <!-- pico.css -->
    <link rel="stylesheet" href="css/pico.min.css">
</head>
<body>
    <main class="container">
        <h1>메인 페이지</h1>
        <h5>The time on the server is ${serverTime}.</h5>
        <article>
            <table>
                <a href="/create" role="button">영상 입력하기</a>
                <hr>
                <thead>
                    <tr>
                        <th scope="col">영상 URL</th>
                        <th scope="col">제목</th>
                        <th scope="col">정보</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="row" items="${data}">
                        <tr>
                            <td><a href="/detail?ottId=${row.ott_id}"> ${row.url}</a></th>
                            <td>${row.title}</td>
                            <td>${row.info}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </article>
    </main>
</body>
</html>
