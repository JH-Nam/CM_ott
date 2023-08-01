<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html data-theme="light">
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
        
    <!-- pico.css -->
    <link rel="stylesheet" href="css/pico.min.css">
</head>

<body>
    <main class="container">
        <h1>영상 상세, 시청</h1>
        <article>
            <h6>영상 URL : ${ data.url }</h6>
            <h6>제목 : ${ data.title }</h6>
            <h6>정보 : ${ data.info }</h6>
            <h6>
                입력일 :
                <fmt:formatDate value="${data.time}"
                    pattern="yyyy.MM.dd HH:mm:ss" />
            </h6>

            
            <button onclick="location.href='/update?ottId=${ottId}'">수정</button>
            <form method="POST" action="/delete">
                <input type="hidden" name="ottId" value="${ottId}"/> 
                <input type="submit" class="secondary" value="삭제" />
            </form>
            <div style="margin-bottom: 30px;">
                <a class="contrast" href="/list">목록으로</a>
            </div>
	        <video
	            id="my-player"
	            class="video-js"
	            controls preload="auto"
	            poster="//vjs.zencdn.net/v/oceans.png"
	            data-setup='{}'
                style="position: relative; width: 100%; height: auto;"
                >
	        <source
	            src="/css/2023-02-28 오후 네트워크 기초.mp4"
	            type="video/mp4"
	            label="1080P">
	        <p class="vjs-no-js">
	            To view this video please enable JavaScript, and consider upgrading to a web browser that
	            <a href="https://videojs.com/html5-video-support/" target="_blank">
	                supports HTML5 video
	            </a>
	        </p>
	        </video>
        </article>
    </main>
</body>
</html>
