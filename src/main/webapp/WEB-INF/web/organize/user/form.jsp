<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html>
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
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/lib/bootstrap.datepicker.css" />
    <!-- this page specific styles -->
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/compiled/new-user.css" type="text/css" media="screen" />
    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
	<!-- navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <a class="brand" href="${pageContext.request.contextPath}/main"><img src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/img/logo.png"></a>
            <ul class="nav pull-right">                
                <li class="dropdown settings">
                    <a href="#" class="dropdown-toggle hidden-phone" data-toggle="dropdown">
                        <i class="icon-cog"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/organize/user/edit/1">管理员信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/passport/exit">注销</a></li>
                    </ul>
                </li>
            </ul>            
        </div>
    </div>
    <!-- end navbar -->

    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li>
                <a href="${pageContext.request.contextPath}/student/list">
                    <i class="icon-group"></i>
                    <span>学员信息</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="icon-signal"></i>
                    <span>Charts</span>
                </a>
            </li>
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="#">
                    <i class="icon-user"></i>
                    <span>管理员信息</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- end sidebar -->
    

	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
        <div class="container-fluid">
            <div id="pad-wrapper" class="new-user">
                <div class="row-fluid header">
                    <h3><i class="icon-edit">&nbsp;</i>修改信息</h3>
                </div>

                <div class="row-fluid form-wrapper">
                    <!-- left column -->
                    <div class="span9 with-sidebar">
                        <div class="container">
                            <sf:form modelAttribute="entity" method="post" action="${pageContext.request.contextPath}${uriDirector}/save" cssClass="new_user_form">
                                <div style="display: none;">
                                	<sf:hidden path="id"/>
                                </div>
                                <div class="span11 field-box">
                                    <label>用户名:</label>
                                    <input id="username" type="text" class="span9 inline-input" readonly="readonly" value="${entity.username}"/>
                                </div>
                                <div class="span12 field-box">
                                    <label>名称:</label>
                                    <sf:input path="name" cssClass="span9 inline-input"/>
                                </div>
                                <div class="span12 field-box">
                                    <label>邮箱:</label>
                                    <sf:input path="mail" cssClass="span9 inline-input"/>
                                </div>
                                <div class="span12 field-box">
                                    <label>手机:</label>
                                    <sf:input path="telephone" cssClass="span9 inline-input"/>
                                </div>
                                <div class="span12 field-box">
                                    <label>管理员:</label>
                                    <div class="text">${entity.admin ? "是" : "否"}</div>
                                </div>
                                <div class="span11 field-box actions">
                                    <a id="saveBtn" class="btn-flat primary"><i class="icon-ok">&nbsp;保存</i></a>
                                    <a class="btn-flat white" onclick="window.history.back();"><i class="icon-reply">&nbsp;返回</i></a>
                                </div>
                            </sf:form>
                        </div>
                    </div>
                    <div class="span3 avatar-box">
                    <div class="personal-image">
                        <img src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/img/personal-info.png" class="avatar img-circle" />
                        <p>点击上传头像</p>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->


<!-- scripts -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/js/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/js/theme.js"></script>
	<script src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/js/bootstrap.datepicker.js"></script>
    <script type="text/javascript">
        $(function () {
        	
        	// datepicker plugin
            $('.datepicker').datepicker({
            	format: 'yyyy-mm-dd'
            }).on('changeDate', function (ev) {
                $(this).datepicker('hide');
            });
        	
        	$('#saveBtn').click(function () {
        		//var id = $('#id').val();
        		//alert(id);
        		//alert($('#groupId').val());
        		$.ajax({
        			type: 'post',
        			url: '${pageContext.request.contextPath}${uriDirector}/save/ajax',
        			async: false,
        			dataType: 'json',
        			data: $('#entity').serializeArray(),
        			success: function (result){
        				alert(result.message);
        				if(result.success) {
        					$('#id').val(result.id);
        					//location.reload();
        				}
        			}
        		});
        			
        			
        	});
        });
    </script>
</body>
</html>