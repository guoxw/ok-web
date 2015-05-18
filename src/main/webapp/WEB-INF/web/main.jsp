<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main.jsp</title>
<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/bootstrap/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/resources/cardNavigation/css/metro.css" />
</head>
<body>
<div class="">

<div class="metro-layout">
  	<div class="item"><a class="box" href="${pageContext.request.contextPath}/student/list"><span>学员信息</span><img class="icon" src="<%= request.getContextPath() %>/resources/cardNavigation/images/mail.png" alt="" /></a></div>
	<div class="item"><a class="box " href="${pageContext.request.contextPath}/student/new" style="background: #43b51f;"><span>新增学员</span><img class="icon" src="<%= request.getContextPath() %>/resources/cardNavigation/images/phone.png" alt="" /></a></div>
	<div class="item"><a class="box " href="#" style="background: #f58d00;"><span>报表</span><img class="icon" src="<%= request.getContextPath() %>/resources/cardNavigation/images/firefox.png" alt="" /></a></div>
	<div class="item"><a class="box " href="${pageContext.request.contextPath}/organize/user/edit/1" style="background: #6b6b6b;"><span>管理员信息</span><img class="icon" src="<%= request.getContextPath() %>/resources/cardNavigation/images/settings.png" alt="" /></a></div>
</div>


</div>
</body>
</html>