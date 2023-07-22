<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>영상 상세, 시청</title>
<link href="https://unpkg.com/video.js/dist/video-js.min.css"
	rel="stylesheet">
<script src="https://unpkg.com/video.js/dist/video.min.js"></script>

<!-- unpkg : use a specific version of Video.js (change the version numbers as necessary) -->
<link href="https://unpkg.com/video.js@8.3.0/dist/video-js.min.css"
	rel="stylesheet">
<script src="https://unpkg.com/video.js@8.3.0/dist/video.min.js"></script>

<!-- cdnjs : use a specific version of Video.js (change the version numbers as necessary) -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/video.js/8.3.0/video-js.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/video.js/8.3.0/video.min.js"></script>
</head>

<body>
	<h1>영상 상세, 시청</h1>
	<p>영상 URL : ${ data.url }</p>
	<p>제목 : ${ data.title }</p>
	<p>정보 : ${ data.info }</p>
	<p>
		입력일 :
		<fmt:formatDate value="${data.time}"
			pattern="yyyy.MM.dd HH:mm:ss" />
	</p>

	<p>
		<a href="/update?ottId=${ottId}">수정</a>
	</p>
	<form method="POST" action="/delete">
		<input type="hidden" name="ottId" value="${ottId}" /> <input type="submit" value="삭제" />
	</form>
	<p>
		<a href="/list">목록으로</a>
	</p>
	
	<video
        id="my-player"
        class="video-js"
        controls preload="auto"
        poster="//vjs.zencdn.net/v/oceans.png"
        data-setup='{}'
        width="720"
        height="480">
    <source
        src="${ data.url }"
        type="application/x-mpegURL"
        label="1080P">
    <p class="vjs-no-js">
        To view this video please enable JavaScript, and consider upgrading to a web browser that
        <a href="https://videojs.com/html5-video-support/" target="_blank">
            supports HTML5 video
        </a>
    </p>
</video>
</body>
</html>
