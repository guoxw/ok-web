<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index.jsp</title>
</head>
<body>
<a href="hello.html">Hello Spring MVC</a><br/>
<a href="main.html">main</a><br/>

<form method="post" action="/web/file/upload" enctype="multipart/form-data">
            <input type="file" name="file"/>
            <input type="file" name="file"/>
            <input type="submit"/>
        </form>
</body>
</html>