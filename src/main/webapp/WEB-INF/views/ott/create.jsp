<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html data-theme="dark">
<head>
    <title>영상 입력하기</title>

    <!-- pico.css -->
    <link rel="stylesheet" href="../css/pico.min.css">
</head>
<body>
    <main class="container">
        <h1>영상 입력하기</h1>
        <article>
            <form method="POST">
                <label>영상 주소</label>
                <input type="text" name="url" placeholder="Video URL"/>
                <label>영상 제목</label>
                <input type="text" name="title" placeholder="Title"/>
                <label>영상 정보</label>
                <input type="text" name="info" placeholder="Info"/>
                
                <input type="submit" value="입력">
            </form>
            <a href="/">메인 화면으로 돌아가기</a>
        </article>
    </main>
</body>
</html>

