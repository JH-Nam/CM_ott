<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>영상 수정</title>
</head>
<body>
	<h1>영상 수정</h1>
	<form method="POST">
		<p>
			영상 URL : <input type="text" name="url" value="${ data.url }" />
		</p>
		<p>
			제목 : <input type="text" name="title" value="${ data.title }" />
		</p>
		<p>
			정보 : <input type="text" name="info" value="${ data.info }" />
		</p>
		<p>
			<input type="submit" value="저장" /> <button action="/detail?ottId=${ data.ott_id }">취소</button>
		</p>
	</form>
</body>
</html>
