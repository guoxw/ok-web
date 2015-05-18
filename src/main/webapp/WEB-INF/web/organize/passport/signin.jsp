<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="login-bg">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- bootstrap -->
    <link href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/compiled/signin.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
	<div class="row-fluid login-wrapper">
        <a href="#">
            <img class="logo" src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/img/logo-white.png" />
        </a>

        <div class="span4 box">
            <div class="content-wrap">
                <h6>登&nbsp;&nbsp;&nbsp;录</h6>
                <input id="username" class="span12" type="text" placeholder="用户名" />
                <input id="password" class="span12" type="password" placeholder="密码" />
                <a href="#" class="forgot">忘记密码？</a>
                <div class="remember">
                    <input id="remember-me" type="checkbox" />
                    <label for="remember-me">下次自动登录</label>
                </div>
                <a class="btn-glow primary login" href="#">登&nbsp;&nbsp;录</a>
            </div>
        </div>
    </div>


<!-- scripts -->
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/lib/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/js/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/js/theme.js"></script>

    <script type="text/javascript">
    	function login(username, password){
    		$.ajax({
    			url: '${pageContext.request.contextPath}${uriDirector}/signin/do',
    			type: 'POST',
    			async: true,
    			data: {username: username, password: password},
    			dataType: 'json',
    			success: function(result){
    				if(result.success) {
    					window.location.href = '${pageContext.request.contextPath}/main';
    				} else {
    					alert(result.message);
    				}
    			},
    			error: function(){
    				
    			}
    		});
    	}
    
        $(function () {
			$('.login').click(function(){
				var username = $("#username").val();
				var password = $("#password").val();
				login(username,password);
			});
			$('#password').keyup(function(e){
				if(e.keyCode == 13) {
					var username = $("#username").val();
					var password = $("#password").val();
					login(username,password);
				}
			});
			
        });
        
        
    </script>
</body>
</html>