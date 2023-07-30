<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html data-theme="dark">
<head>
    <title>영상 목록</title>

    <!-- pico.css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css">
</head>
<body>
    <main class="container">
        <h1>영상 목록</h1>
        <article>
            <div>
                <form>
                    <input type="text" placeholder="검색" name="keyword" value="${keyword}" />
                    <input type="submit" value="검색" />
                </form>
            </div>

            <table>
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
                            <td><a href="/detail?ottId=${row.ott_id}"> ${row.url}</a></td>
                            <td>${row.title}</td>
                            <td>${row.info}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div style="margin-bottom: 15px;">
            <a href="/create" class="contrast">생성</a>
            </div>
            <div>
            <a href="/" class="contrast">메인 화면으로 돌아가기</a>
            </div>
        </article>
    </main>
</body>
</html>
