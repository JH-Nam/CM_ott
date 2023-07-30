<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html data-theme="dark">
<head>
    <title>영상 수정</title>

    <!-- pico.css -->
    <link rel="stylesheet" href="../css/pico.min.css">
</head>
<body>
	<main class="container">
        <h1>영상 수정</h1>
    
        <article>
            <form method="POST">
                <label>영상 URL</label> 
                <input type="text" name="url" value="${ data.url }" placeholder="Video URL"/>
                <label>제목</label> 
                <input type="text" name="title" value="${ data.title }" placeholder="Title"/>
                <label>정보</label> 
                <input type="text" name="info" value="${ data.info }" placeholder="Info"/>
                <div style="margin-top: 15px">
                    <input type="submit" value="저장" /> 
                    <button action="/detail?ottId=${ data.ott_id }" class="secondary">취소</button>
                </div>
            </form>
        </article>
    </main>
</body>
</html>
