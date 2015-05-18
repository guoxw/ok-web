<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
    
    <!-- this page specific styles -->
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/css/compiled/user-list.css" type="text/css" media="screen" />
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
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="${pageContext.request.contextPath}${uriDirector}/list">
                    <i class="icon-group"></i>
                    <span>学员信息</span>
                </a>
            </li>
            <li>
                <a href="chart-showcase.html">
                    <i class="icon-signal"></i>
                    <span>Charts</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- end sidebar -->
    

	<!-- main container -->
    <div class="content">
        <!-- settings changer -->
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3><i class="icon-group"></i>&nbsp;学员信息</h3>
                    <div class="span8 pull-right pagination">
                    	<a href="${pageContext.request.contextPath}${uriDirector}/new" class="btn-flat primary pull-right" style="margin-left: 5px;  padding-bottom: 6px; padding-top: 4px;">
                            <span>+</span>
                            新增学员
                        </a>
                        <input type="text" class="span7 search pull-right" placeholder="输入姓名或手机号码进行搜索...">
                    </div>
                </div>

                <!-- Users table -->
                <div class="row-fluid table">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                            	<th class="sortable" style="width: 20px; min-width: 20px; max-width: 20px;">#</th>
                                <th class="sortable" style="min-width: 110px;">姓名</th>
                                <th class="sortable" style="width: 60px">
                                    <span class="line"></span>年龄(岁)
                                </th>
                                <th class="sortable">
                                    <span class="line"></span>学校
                                </th>
                                <th class="sortable">
                                    <span class="line"></span>上课时间
                                </th>
                                <th class="sortable">
                                    <span class="line"></span>轮滑等级
                                </th>
                                <th class="align-center" style="width: 85px; min-width: 85px; max-width: 85px;">
                                    <span class="line"></span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
	                        <c:forEach var="item" items="${items.content}" varStatus="status">
	                        <!-- row -->
	                        <tr ${status.index==0 ? 'class=\"first\"':''}>
	                        	<td>
	                        		<c:out value="${status.index+1}"/>.
									<input type="hidden" value="${item.id}" class="id"/>
	                        	</td>
	                            <td>
	                            	<div class="media">
						              <a class="pull-left" href="${pageContext.request.contextPath}${uriDirector}/edit/${item.id}">
						                <img src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/img/contact-img2.png" class="img-circle avatar hidden-phone">
						              </a>
						              <div class="media-body">
						                <a href="${pageContext.request.contextPath}${uriDirector}/edit/${item.id}" class="name">${item.name}</a>
	                                	<span class="subtext">${item.guardianTelephone}</span>
						              </div>
						            </div>
	                            </td>
	                            <td>
	                                ${item.age}
	                            </td>
	                            <td>
	                                ${item.school}
	                            </td>
	                            <td>
	                                ${item.training}
	                            </td>
	                            <td>
	                                ${item.level}
	                            </td>
	                            <td class="align-center">
									<a class="btn btn-info" href="${pageContext.request.contextPath}${uriDirector}/edit/${item.id}">
										<i class="icon-edit "></i>                                            
									</a>
									<a class="btn btn-danger deleteBtn" href="#">
										<i class="icon-trash "></i> 
									</a>
								</td>
	                        </tr>
	                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <c:if test="${paginationType == 2}">
                <div class="pagination pagination-large pull-right">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <c:set var="maxCount" value="8"/>
                        <c:forEach var="item" varStatus="status" begin="${items.totalPages>8&&items.number>(maxCount/2-1) ? ((items.totalPages-items.number)<maxCount/2 ? items.number-(maxCount-(items.totalPages-items.number)):items.number-(maxCount/2-1)):0}" end="${items.totalPages>0 ? (items.totalPages>items.number+(maxCount/2) ? ((items.number+(maxCount/2))<maxCount ? maxCount-1:items.number+(maxCount/2)):items.totalPages-1):0}">
                        <li>
                        	<a <c:if test="${items.number == status.index}">class="active"</c:if> 
                        		href="${pageContext.request.contextPath}${uriDirector}/list?page=${status.index+1}&size=${items.size}${keyword!=null ? '&'.concat(keyword) : ''}">
                        		<c:out value="${status.index+1}"/>
                        	</a>
                        </li>
                        </c:forEach>

                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
                </c:if>
                <!-- end users table -->
            </div>
        </div>
    </div>
    <!-- end main container -->


<!-- scripts -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/js/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/ui/detail.herokuapp.com/js/theme.js"></script>

    <script type="text/javascript">
        $(function () {
        	$('.deleteBtn').click(function (e) {
        		var $row = $(e.currentTarget).parentsUntil('tr').parent();
        		var ids = $row.find(".id").val();
        		var names = $row.find(".name").text();
        		var r=confirm('确认删除 ' + names + ' !');
				if (!r) {
					return;
				}
        		//alert(ids);
        		//return;
        		$.ajax({
        			type: 'get',
        			url: '${pageContext.request.contextPath}${uriDirector}/delete/ajax/' + ids,
        			async: false,
        			dataType: 'json',
        			success: function (result){
        				alert(result.message);
        				if(result.success){
        					window.location.reload();
        				}
        			}
        		});
        	});
        	$('.search').keyup(function (e) {
        		if(e.keyCode == 13) {
        			var keyword = $(this).val();
        			window.location.href = '${pageContext.request.contextPath}${uriDirector}/list?keyword=' + keyword ;
        		}
        		
        	});
        	
        	
        });
    </script>
</body>
</html>